# program to find out if the given user-name contains less than 10 characters
# or not

# prompt the user for input of the username
userName = input("Username: ")

# check if the username length is 10 characters
# and display message accordingly
if len(userName) < 10:
    print("Username is too short!")
else:
    print("Username submitted")
