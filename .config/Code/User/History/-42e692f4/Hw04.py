# program 15 with a list of such words to be replaced

# let's keep a list of such words to be replaced
curseWords = ['never', 'gonna', 'give', 'you', 'up']

# other logic is same as the previous question
writeBuffer = []
with open("16_tempfile.txt", "r") as f:
    content = f.read()
    print("File read.")

for word in curseWords:
    newContent = content.replace('donkey', '######')
print(newContent)
with open("16_tempfile.txt", "w") as f:
    f.write(newContent)

# currently in this qn TODO