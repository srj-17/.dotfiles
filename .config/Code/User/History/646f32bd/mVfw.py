# program to numberswap
# version 2
a = [10, 20, 30, 40, 50]
b = [60, 70, 80, 90, 100]

print("Before swap: ")
print(f"a = {a}")
print(f"b = {b}")

# swap
# take half the length
halfLen = len(a) // 2
for i in range(halfLen):
    a[halfLen]
c = a
a = b
b = c

print("After swap: ")
print(f"a = {a}")
print(f"b = {b}")
