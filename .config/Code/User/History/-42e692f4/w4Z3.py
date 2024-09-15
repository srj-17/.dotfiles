# program 15 with a list of such words to be replaced

# let's keep a list of such words to be replaced
curseWords = ['never', 'gonna', 'give', 'you', 'up']

# other logic is same as the previous question
writeBuffer = []
with open("16_tempfile.txt", "r") as f:
    print("File Opened.")
    fileLines = f.readlines()
    for line in fileLines:
        for curseword in line:
            line.replace(curseword, '#####')
        print("Replaced the curseword with ###### in writeBuffer")
        writeBuffer.append(line)

with open("16_tempfile.txt", "w") as f:
    for line in writeBuffer:
        print(f"Writebuffer written to the file")
        f.write(line)