# program 15 with a list of such words to be replaced

# let's keep a list of such words to be replaced
curseWords = ['never', 'gonna', 'give', 'you', 'up']

# other logic is same as the previous question
with open("textfiles/16_tempfile.txt", "r") as f:
    content = f.read()
    print("File read.")

for word in curseWords:
    content = content.replace(word, '######')
print('File modified')

with open("textfiles/16_tempfile.txt", "w") as f:
    f.write(content)
print("File written")
