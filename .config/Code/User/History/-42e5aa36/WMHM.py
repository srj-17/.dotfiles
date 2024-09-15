# program to find if the file's contents are identical to another file

# open the file and read the contents of file to contentA
with open("textfiles/18/a.txt", "r") as f:
    content = f.read()

# open another file and 