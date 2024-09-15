# program to find if the file's contents are identical to another file

# open the file and read the contents of file to contentA
with open("textfiles/18/a.txt", "r") as f:
    contentA = f.read()

# open another file and read its contents to contentB
with open("textfiles/18/b.txt", "r") as f:
    contentB = f.read() 

if contentA == contentB:
    print("files have same content")