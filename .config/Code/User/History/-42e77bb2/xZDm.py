with open("14_testfile.txt", "r") as f:
    lines = f.readlines()
    for line in lines:
        words = line.lower().split()
        if 'twinkle' in words:
            print("There's twkinkle here")
            