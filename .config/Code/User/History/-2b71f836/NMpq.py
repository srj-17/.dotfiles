# a spam comment is defined as one of the following phrases:
# "Make a lot of Money"
# "Subscribe this"
# "Click this"
# program to detect spam

# make a list of spam comments
spam_comments = [
    "make a lot of money",
    "subscribe this",
    "click this",
]
# ask user for a message
# if message in spam comments, display "hait, scam hanna khojne?"

message = input("Write a message: ")

if message.lower() in spam_comments:
    