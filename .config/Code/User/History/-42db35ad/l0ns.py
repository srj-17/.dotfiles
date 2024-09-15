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
    # if filename is not empty and ends with .txt, rename file
    if newFileName and newFileName.endswith('.txt'):
        # if file with filename already exists, ask to confirm if user really wants to rename the file
        if newFileName in fileList:
            ans = input("File with that name already exists. Are you sure you want to rename? (y or n): ")
            if ans == 'y':
                os.rename(f"textfiles/20/{fileList[selectedFileIndex - 1]}", f"textfiles/20/{newFileName}")
                print("renamed")
            elif ans == 'n':
                pass
            else:
                print("invalid response")
            break
    else:
        print("Invalid file name. Must not be empty and must end with .txt")
