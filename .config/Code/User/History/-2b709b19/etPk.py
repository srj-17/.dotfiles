# program to print multiplication table of given number 
# using for and while loop

# get the number to print multiplication number
num = int(input("Number: "))

# print the table using for loop
for _ in range(num):
    index = _ + 1
    print(f"{index} * {num} = {num * index}")
# print the table using while loop
