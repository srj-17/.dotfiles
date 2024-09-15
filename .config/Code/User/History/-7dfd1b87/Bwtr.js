let userName = prompt("Who's there?");
let password;

if (userName == 'Admin') {
    password = prompt("Password?");
    if (password == null || password != 'TheMaster') {
        
    }
} else if (userName != 'Admin')
