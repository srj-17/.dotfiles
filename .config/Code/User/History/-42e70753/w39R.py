# program to remplace donkey with '#####' in file
with open("textfiles/15_donkeyfile.txt", "r") as f:
    content = f.read()
    print("File read.")

newContent = content.replace('donkey', '######')
print("File modified")

with open("textfiles/15_donkeyfile.txt", "w") as f:
    f.write(newContent)
print("File written")