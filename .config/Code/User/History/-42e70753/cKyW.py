# program to remplace donkey with '#####' in file
writeBuffer = None
with open("15_donkeyfile.txt", "r") as f:
    fileLines = f.readlines()
    for line in fileLines:
        line = line.replace('donkey', '#####')
    