# program to make a copy of the file ram.txt
# the the copy file be shyam.txt
# open the file "ram.txt" in read mode, read its contents to 'content'
with open("textfiles/ram.txt", "r") as file:
    content = file.read()
print("File read")

# write the contents copied from ram to shyam.txt in 'write' mode
with open("textfiles/shyam.txt", "w") as file:
    file.write(content)
print("Contents of file written to new file")