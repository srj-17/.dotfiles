# program to remplace donkey with '#####' in file
writeBuffer = []
with open("15_donkeyfile.txt", "r") as f:
    print("File Opened.")
    fileLines = f.readlines()
    for line in fileLines:
        print("Replaced the ")
        line = line.replace('donkey', '######')
        writeBuffer.append(line)

with open("15_donkeyfile.txt", "w") as f:
    for line in writeBuffer:
        print(f"Written {line} to the file")
        f.write(line)