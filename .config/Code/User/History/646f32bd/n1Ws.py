# program to numberswap
# version 2
a = [10, 20, 30, 40, 50]
b = [60, 70, 80, 90, 100]

print("Before swap: ")
print(f"a = {a}")
print(f"b = {b}")

# swap
c = a
a = b
b = c

# swap the midpoints again
# this gives us midpoint at 2, which is what we want
midpoint = len(a) // 2 
a[midpoint] = temp
temp = b[midpoint]
b[midpoint] = a[midpoint]

print("After swap: ")
print(f"a = {a}")
print(f"b = {b}")
