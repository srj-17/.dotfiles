# program to remplace donkey with '#####' in file
# maintain a writeBuffer to write the opened file's content
writeBuffer = []
with open("15_donkeyfile.txt", "r+") as f:
    print("File Opened.")
    content = f.read()
    print(content)
