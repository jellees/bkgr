import sys, re

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
    
    total = src + asm
    print("src: {:.2f}%, 0x{:x} bytes".format(100 * src / total, src))
    print("asm: {:.2f}%, 0x{:x} bytes".format(100 * asm / total, asm))
