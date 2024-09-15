# program to print multiplication table of given number 
# using for and while loop

# get the number to print multiplication number
num = int(input("Number: "))

# print the table using for loop
print("Multiplication table using for loop ")
print("------------------------------------")
for _ in range(num):
    index = _ + 1
    print(f"{index} x {num} = {num * index}")
print("------------------------------------")

# print the table using while loop
print("Multiplication table using for loop ")
print("------------------------------------")
whileIndex = 1
while whileIndex != num:
    print(f"{whileIndex} x {num} = {num * index}")
    whileIndex -= 1
print("------------------------------------")


