import os
import sys

def get_list_of_files(dirName):
    # create a list of file and sub directories 
    # names in the given directory 
    listOfFile = os.listdir(dirName)
    allFiles = list()
    # Iterate over all the entries
    for entry in listOfFile:
        if entry.endswith('.bin'):
            continue
        # Create full path
        fullPath = os.path.join(dirName, entry)
        # If entry is a directory then get the list of files in this directory 
        if os.path.isdir(fullPath):
            allFiles = allFiles + get_list_of_files(fullPath)
        else:
            allFiles.append(fullPath)
                
    return allFiles

if __name__ == "__main__":

    if len(sys.argv) < 3:
        print("Usage: rename.py old new")
        sys.exit(1)

    old = sys.argv[1]
    new = sys.argv[2]
    
    files = get_list_of_files('asm/')
    for filename in files:
        s = open(filename).read()
        s = s.replace(old, new)
        f = open(filename, 'w')
        f.write(s)
        f.close()
