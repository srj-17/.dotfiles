# program to wipe out contents of a file using python

# open a file on write mode and just write nothing 
# by the properties of file.write(), it will overwrite the existing text
with open("textfiles/19.txt", "w") as f:
    f.write("")