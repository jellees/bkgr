#!/usr/bin/env python3
import sys

if len(sys.argv) != 2:
    print("Give input.\n0: hex value.")
    exit(1)

print((float(int(sys.argv[1], 0))) /  65535)