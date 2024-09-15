# program to find greatest of 4 numbers entered by the user

# initialize a numbers
a = [];
print("Enter any 4 numbers: ")

for _ in range(4):
    tmp = int(input())
    a.append(tmp)

a.sort()
print(f"The greatest number among the 4 is: {a[-1]}");