# a spam comment is defined as one of the following phrases:
# "Make a lot of Money"
# "Subscribe this"
# "Click this"
# program to detect spam

# make a list of spam comments
spam_comments = [
    "Make a lot of money",
    "Subscribe this",
    "Click this",
]
# ask user for a message
# if message in spam comments, display "hait, scam hanna khojne?"

message = input("Write a message: ")

if message.lower()