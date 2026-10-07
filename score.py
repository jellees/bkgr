#!/usr/bin/env python3
import sys, re, os, glob, shutil, subprocess, tempfile


def nonmatching_sizes():
    # NONMATCHING functions live in src/*.c but are built from an included asm/nonmatching/*.s,
    # so they count as asm rather than src. The compiler output is scanned instead of the .c
    # files so that only includes in the active #ifdef branch count. Each include's size is
    # taken by assembling it on its own.
    paths = set()
    for path in glob.glob("build/src/*.s"):
        with open(path, "r") as f:
            paths.update(re.findall(r'asm/nonmatching/\w+\.s', f.read()))

    bin_dir = os.path.join(os.environ.get("DEVKITARM", "/opt/devkitpro/devkitARM"), "bin")
    tmp_dir = tempfile.mkdtemp()
    sizes = {}
    try:
        source = os.path.join(tmp_dir, "nonmatching.s")
        obj = os.path.join(tmp_dir, "nonmatching.o")
        for path in sorted(paths):
            with open(source, "w") as f:
                f.write('.syntax unified\n.thumb\n.include "{}"\n'.format(path))
            subprocess.run([os.path.join(bin_dir, "arm-none-eabi-as"), "-mcpu=arm7tdmi", "-I", "include",
                            "-o", obj, source], check=True)
            output = subprocess.run([os.path.join(bin_dir, "arm-none-eabi-size"), "-A", obj],
                                    capture_output=True, text=True, check=True).stdout
            sizes[path] = int(re.search(r'^\.text\s+(\d+)', output, re.MULTILINE).group(1))
    finally:
        shutil.rmtree(tmp_dir)
    return sizes


if __name__ == "__main__":
    src = 0
    asm = 0

    with open("bkgr.map", "r") as f:
        content = f.read()
        matches = re.findall(r'^ \.(\w+)\s+0x[0-9a-f]+\s+(0x[0-9a-f]+) (\w+)\/.+\.o', content, re.MULTILINE)
        for match in matches:
            if match[0] == 'text':
                if match[2] == 'src':
                    src += int(match[1], 0)
                elif match[2] == 'asm':
                    asm += int(match[1], 0)
            elif match[0] == 'data':
                if match[2] == 'src':
                    src += int(match[1], 0)

    nonmatching = nonmatching_sizes()
    nonmatching_total = sum(nonmatching.values())
    src -= nonmatching_total
    asm += nonmatching_total

    total = src + asm

    if len(sys.argv) == 1:
        print("src: {:.2f}%, 0x{:x} bytes".format(100 * src / total, src))
        print("asm: {:.2f}%, 0x{:x} bytes".format(100 * asm / total, asm))
        print("(includes {} nonmatching functions, 0x{:x} bytes, counted as asm)".format(
            len(nonmatching), nonmatching_total))
    elif len(sys.argv) == 2 and sys.argv[1] == "-p":
        print("{:.2f}".format(100 * src / total))
