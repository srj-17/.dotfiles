# program to find if the given number is prime or not
# prime numbers are numbers only divisible by 1 and itself
# and not by any other number

# input the number
num = int(input("Number: "))

# numbers less than 0 are not prime btw
if num <= 0:
    print("Number is not a prime")
else:
    # for each number between 1 and num - 1
    for x in range(2, num):
        # if it is, then its not a prime, if not, then yes 
        if num % x == 0 or num == 1:
            print("Number is not a prime")
            break
    # this else only runs if for loop runs for all its iterations and not if it breaks early
    # if not divisible by any of those numbers, it is indeed a prime
    else:
        print("Number is a prime")
