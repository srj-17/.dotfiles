# program to find if a student has failed or passed in a subject

# subjects is a dictionary with marks as values
subjects = {
    "maths": None,
    "english": None,
    "nepali": None,
}

for key in subjects:
    subjects[key] = int(input(f"Marks in {key}"))    
    