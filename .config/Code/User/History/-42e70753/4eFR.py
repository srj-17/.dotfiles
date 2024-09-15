# program to remplace donkey with '#####' in file
writeBuffer = None
with open("15_donkeyfile.txt", "r") as f:
    x = f.readlines()
    for _ in x:
        strings = _.split()
        for string in strings:
            if string == 'donkey':
                strings.replace
            writeBuffer = ' '.join(string)
                        