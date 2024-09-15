# program to calculate factorial of given number using for loop
# factorial of a number n = n * n-1 * n-2 * ... * 1 
# or 1 to n
# factorial of 1 and 0 is 1

# get a number from user
while True:
    num = int(input()"Number: ")
    # if the number is negative, ask him for number again
    if num >= 0:
        break

# if the number is positive 
# if number = 1 or 0, print 1
if num == 0 or num == 1:
    print("Factorial: 1")
else:
    fact = 1
    for n in range(1, num + 1):
        fact = fact * n
    print(f"Factorial: {fact}")
    # else calculate the accumulated product from 1 to n and print it
