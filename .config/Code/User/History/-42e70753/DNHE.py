# program to remplace donkey with '#####' in file
with open("15_donkeyfile.txt", "r") as f:
    x = f.read()
    for _ in x:
        print()