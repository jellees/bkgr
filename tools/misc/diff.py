import sys
import ntpath

if __name__ == "__main__":
    
    if len(sys.argv) < 3:
        print("Usage: parsetext.py file original")
        sys.exit(1)
    
    with open(sys.argv[1], "rb") as f1:
        with open(sys.argv[2], "rb") as f2:
            byte1 = f1.read(1)
            byte2 = f2.read(1)

            while(byte1 and byte2):
                if byte1 != byte2:
                    print(ntpath.basename(sys.argv[1]) + ": Fail.")
                    print("At: 0x%0.8X" % (f1.tell() - 1 + 0x08000000))
                    print(f"Data: 0x{byte1.hex()} and 0x{byte2.hex()}")
                    sys.exit(1)
                    
                byte1 = f1.read(1)
                byte2 = f2.read(1)

    print(ntpath.basename(sys.argv[1]) + ": OK")
    sys.exit(0)
