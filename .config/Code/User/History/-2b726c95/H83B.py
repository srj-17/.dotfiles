# program to find if a student has failed or passed in a subject

# subjects is a dictionary with marks as values
subjects = {
    "maths": None,
    "english": None,
    "nepali": None,
}

# get the marks for each subject in subjects
for subject in subjects:
    subjects[subject] = int(input(f"Marks in {subject}: "))    
    
totalMarks = 0
for subject in subjects:
    if subjects[subject] / 100 * 100 < 33