# program to find if the given number is prime or not
# prime numbers are numbers only divisible by 1 and itself
# and not by any other number

# input the number
num = int(input("Number: "))

# check if the modulus is 0 or not for each of the numbers from 
# 2 to the number-1
# if it is, then its a prime, if not, then not
for x in range(2, num):
    if num == 1:
        print("Number is prime")
        break
    if num % x == 0:
        print("Number is prime")
        break
# this else only runs if for loop breaks early due to break
# if not divisible by any of those numbers, it is indeed a prime
else:
    print("Number is not a prime")
