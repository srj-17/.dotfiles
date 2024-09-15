# program 15 with a list of such words to be replaced

# let's keep a list of such words to be replaced
curseWords = ['never', 'gonna', 'give', 'you', 'up']

# other logic is same as the previous question
writeBuffer = []
with open("15_donkeyfile.txt", "r") as f:
    print("File Opened.")
    fileLines = f.readlines()
    for line in fileLines:
        for curseword in curseWords:
            
        print("Replaced the 'donkey' with ###### in writeBuffer")
        writeBuffer.append(line)

with open("15_donkeyfile.txt", "w") as f:
    for line in writeBuffer:
        print(f"Writebuffer written to the file")
        f.write(line)