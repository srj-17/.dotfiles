# program to numberswap
a = [10, 20, 30, 40, 50]
b = [60, 70, 80, 90, 100]

print("Before: ")
print(f"a = {a}")
print(f"b = {b}")

a = [a[0] + 10] + a[1:-1] + [a[-1] + 10] 
b = [b[0] ]
