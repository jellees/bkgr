import sys

if __name__ == "__main__":
    
    terminator = b"\x00"

    if len(sys.argv) < 3:
        print("Usage: parsetext.py source output")
        sys.exit(1)

    asm = open(sys.argv[2], "w")

    with open(sys.argv[1], "rb") as f:
        byte = f.read(1)
        string = ""
        while byte:

            if byte == terminator:
                asm.write(f"    text_str \"{string}\"\n")
                string = ""
                byte = f.read(1)
                while byte == b"\x00":
                    byte = f.read(1)
                    if byte == terminator:
                        asm.write(f"    text_str \"\"\n")
                        byte = f.read(1)

            num = int.from_bytes(byte, byteorder='little')
            if num >= 0x20 and num < 0x80:
                char = byte.decode('ascii', 'backslashreplace')
            elif num == 0x0A:
                char = "\\n"
            else:
                char = f"\\x{byte.hex()}"
            string += char
            byte = f.read(1)
