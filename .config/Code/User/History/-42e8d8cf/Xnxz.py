# program to print the star pattern
#   *
#  * * *
# * * * * *
# and so on

# key is the space, not the star

# input a positive number from the user
while True:
    num = int(input("Number of lines in the pattern: "))
    if num > 0:
        break

# for n from 1 to n + 1
for n in range(1, num + 1):
    # print (num - n) spaces and n x's
    print(" " * (num - n), end=("x" * n))
    # print (n - 1) x's at the end of that pattern
    print("x" * (n - 1))

# think of it like 2 patterns stacked against each other
