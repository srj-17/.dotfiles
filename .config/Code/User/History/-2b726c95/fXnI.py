# program to find if a student has failed or passed in a subject

# set fullMarks in each subject as 100
FULL_MARKS = 100

# subjects is a dictionary with marks as values
subjects = {
    "maths": None,
    "english": None,
    "nepali": None,
}

# get the marks for each subject in subjects
for subject in subjects:
    subjects[subject] = int(input(f"Marks in {subject}: "))    
    
# calculate total marks and show failed immediately if percentage
# in any subject is below 33
totalMarks = 0
for subject in subjects:
    if subjects[subject] / FULL_MARKS * 100 < 33:
        print("Student failed.")
        break
    totalMarks += totalMarks + subjects[subject]

# calculate total fullMarks based on how many subjects there are
fullMarks = 0
for _ in subjects:
    fullMarks += FULL_MARKS

# 
if totalMarks / fullMarks * 100 < 44:
    print("Student failed.")
else:
    print("Student passed.")