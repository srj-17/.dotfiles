# program to remove a given word from a list and strip it 
# at the same time

ourList = [
    "   hello ",
    "space  ",
    "nothing"
    "hola   "
]

# print the given list
print(''.join(ourList))

# ask for which word user wants to remove
word = input("Word you want to remove: ")

# remove the word and return the stripped string
for _ in ourList:
    if word.strip() == _.strip():
        ourList.remove(_)

print(f"List with word removed: {ourList.join(',')}.")