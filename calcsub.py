#!/usr/bin/env python3
import sys

if len(sys.argv) != 2:
    print("Give input.\n0: iram subadress.")
    exit(1)

print(hex((int(sys.argv[1], 0) & 0x00FFFFFF) + 0x80001EC))