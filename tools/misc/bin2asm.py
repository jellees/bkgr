import sys

if __name__ == "__main__":
    
    if len(sys.argv) < 4:
        print("Usage: bin2asm.py source destination address length")
        sys.exit(1)

    asm = open(sys.argv[2], "w")

    with open(sys.argv[1], "rb") as f:
        f.seek(int(sys.argv[3]))
        max_length = int(sys.argv[4])
        length = 0
        data = f.read(16)
        while data:
            asm.write("\t.byte 0x" + ", 0x".join([data[i:i+1].hex() for i in range(len(data))]) + (" @ 08%0.6X\n" % (f.tell() - 0x10)))
            data = f.read(16)
            length += 16
            if length > max_length:
                break
