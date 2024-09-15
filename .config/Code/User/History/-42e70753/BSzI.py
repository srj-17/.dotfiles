# program to remplace donkey with '#####' in file
writeBuffer = []
with open("15_donkeyfile.txt", "r") as f:
    fileLines = f.readlines()
    for line in fileLines:
        line = line.replace('donkey', '#####')
        writeBuffer.append(line)

with open("15_donkeyfile.txt", "w") as f:
    for line in writeBuffer:
        f.write(line)