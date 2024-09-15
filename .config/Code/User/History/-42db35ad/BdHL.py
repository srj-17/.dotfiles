# program to rename a file to renamed_by_python.txt
import os

# list the files in 20 directory
fileList = os.listdir('./textfiles/20')
print(fileList)
for index, f in enumerate(fileList):
    if f.endswith('.txt'):
        fileIndex = index + 1
        print(f"{fileIndex}: {f}")

# ask the file user wants to rename
while True: 
    selectedFileIndex = int(input("File you want to rename: "))
    if len(fileList) >= selectedFileIndex or selectedFileIndex < 1:
        break
    else:
        print("No file in that index")

# ask the new name for the file
while True:
    newFileName = input("New FileName: ")
    # don't accept an empty filename
    if newFileName and newFileName.endswith('.txt'):
        break
    else:
        print("Invalid file name. Must not be empty and must end with .txt")

# rename the file with os.rename()
os.rename(f"textfiles/20/{fileList[selectedFileIndex - 1]}", f"textfiles/20/{newFileName}")
print("renamed")