# program to calculate the grade of a student from his marks 
# scheme:
# 90 - 100 => excellent
# 80 - 90 => A
# 70 - 80 => B
# 50 - 70 => C
# < 50 => F

# input the marks of the student
marks = int(input("Marks: "))

# print the grade according to the given range
if marks >= 90 and marks <= 100:
    print("Excellent!")
elif marks < 80 and marks >= 70:
    print("Grade A")
elif marks < 80 and marks >= 60:
    print("Grade A")
