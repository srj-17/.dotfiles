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
    if subjects[subject] / 100 * 100 < 33:
        print("Student failed.")
        break
    totalMarks += totalMarks + subjects[subject]

fullMarks = 0
for _ in subjects:
    fullMarks += 100