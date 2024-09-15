# program to make a copy of the file ram.txt
# the the copy file be shyam.txt
with open("ram.txt", "r") as file:
    content = file.read()

with open("shyam.txt", "w") as file:
    file.write(content)