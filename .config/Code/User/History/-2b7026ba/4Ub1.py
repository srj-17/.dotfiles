# program to find if the given number is prime or not
# prime numbers are numbers only divisible by 1 and itself
# and not by any other number

# input the number
while True:
    num = int(input("Number: "))
    if num >= 0 or isinstance(num, float):


# check if the modulus is 0 or not for each of the numbers from 
# 2 to the number-1
# if it is, then its a prime, if not, then not
for x in range(2, num):
    if num % x == 0 or num == 1:
        print("Number is prime")
        break
# this else only runs if for loop runs for all its iterations and not if it breaks early
# if not divisible by any of those numbers, it is indeed a prime
else:
    print("Number is not a prime")