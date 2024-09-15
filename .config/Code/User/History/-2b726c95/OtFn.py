# program to find if a student has failed or passed in a subject
# pass percentage is 33 percentage for each subject and 40 percentage
# in total

# set fullMarks in each subject as 100
FULL_MARKS = 100

# student passes by default
passed = True

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
        passed = False
        break
    totalMarks += totalMarks + subjects[subject]

# calculate total fullMarks based on how many subjects there are
fullMarks = 0
for _ in subjects:
    fullMarks += FULL_MARKS

# if student has total percentage less than 44, fail the student, else pass him
if totalMarks / fullMarks * 100 < 44:
    passed = False
else:
    # if student hasn't already failed in one of the subjects, pass him
    if passed != False:
        passed = True
        
if passed:
    print("Student passed! Yay!")
else:
    print("Ohmygosh! he failed???")