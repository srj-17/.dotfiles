# program to numberswap
a = [10, 20, 30, 40, 50]
b = [60, 70, 80, 90, 100]

print("Before: ")
print(f"a = {a}")
print(f"b = {b}")

a = [x + 10 for x in a[:len(a) // 2]]

