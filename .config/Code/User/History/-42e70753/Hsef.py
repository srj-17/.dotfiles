# program to remplace donkey with '#####' in file
# maintain a writeBuffer to write the opened file's content
writeBuffer = []
with open("15_donkeyfile.txt", "r+") as f:
    print("File Opened.")
    fileLines = f.readlines()

    for line in fileLines:
        templine = line.replace('donkey', '######')
        f.write(templine)
        print("Replaced the 'donkey' with ###### in writeBuffer")
        writeBuffer.append(line)
