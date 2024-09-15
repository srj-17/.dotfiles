# program to remplace donkey with '#####' in file
# maintain a writeBuffer to write the opened file's content
writeBuffer = []
with open("15_donkeyfile.txt", "r") as f:
    content = f.read()
    print("File read.")

newContent = content.replace('donkey', '######')

with open("15_donkeyfile.txt", "w") as f:
    f.write(newContent)
