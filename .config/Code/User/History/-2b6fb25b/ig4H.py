# program to find sum of first n natural numbers
 
# initialize sum to zero
sum = 0

# ask user for a number
num = int(input("Enter a number: "))

# for each number from 1 to n, add number to the sum
for n in range(1, num + 1):
    sum += n

print("The natural sum to number is: " + sum)

# return the final sum