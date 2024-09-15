# program to remplace donkey with '#####' in file
writeBuffer = None
with open("15_donkeyfile.txt", "r") as f:
    x = f.readlines()
    for _ in x:
        print(_)
