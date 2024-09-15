# program to print the star pattern
#   *
#  * * *
# * * * * *
# and so on

# key is the space, not the star

# input a number from the user
num = int(input("Number: "))

# for n from 1 to n + 1
for n in range(1, num + 1):
    print(" " * (num - 1), end=("x" * n))
    print("x" * (n - 1))
