# program to remplace donkey with '#####' in file
# maintain a writeBuffer to write the opened file's content
writeBuffer = []
with open("15_donkeyfile.txt", "w+") as f:
    print("File Opened.")
    fileLines = f.readlines()

    for line in fileLines:
        line = line.replace('donkey', '######')
        print("Replaced the 'donkey' with ###### in writeBuffer")
        writeBuffer.append(line)

    for line in writeBuffer:
        print(f"Writebuffer written to the file")
        f.write(line)