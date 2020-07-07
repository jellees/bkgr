import sys
import json
import os


def write_header(output, map_file):
    output.write(map_file['name'] + "_header:\n")
    
    output.write(f"\t.2byte {map_file['tiles1_count']} // tiles1 count\n")
    metatiles1_size = os.path.getsize(map_file['metatiles1_path'])
    output.write(f"\t.2byte {metatiles1_size} // metatiles1 count\n")

    output.write(f"\t.2byte {map_file['tiles2_count']} // tiles2 count\n")
    metatiles2_size = os.path.getsize(map_file['metatiles2_path'])
    output.write(f"\t.2byte {metatiles2_size} // metatiles1 count\n")

    output.write(f"\t.2byte {map_file['enabled_bgs']} // enabled backgrounds\n")


if __name__ == "__main__":
    
    if len(sys.argv) < 3:
        print("Usage: map2asm.py source destination")
        sys.exit(1)

    with open(sys.argv[2], "w") as output:
        output.write("\t.syntax unified\n")
        output.write("\t.text\n")
        output.write("\t.arm\n")
        output.write("\n")

        with open(sys.argv[1]) as json_file:
            map_file = json.load(json_file)
            write_header(output, map_file)
            