let userName = prompt("Who's there?");
let password;

if (userName == 'Admin') {
    password = prompt("Password?");
    if (password != 'TheMaster') {
        alert("Wrong Password");
    } else if (password == null) {
        alert("Cancelled!");
    } else {
        alert("Welcome!");
    }
} else {
    if (userName == null || userName == '') {
        alert("Cancelled");
    } else {
        alert("I don't know you!")
    }
}