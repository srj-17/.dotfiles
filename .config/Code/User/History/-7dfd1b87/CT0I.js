let userName = prompt("Who's there?");
let password;

if (userName == 'Admin') {
    password = prompt("Password?");
    if (password == null || password == '') {
        alert("Cancelled!");
    } else if (password != 'TheMaster') {
        alert("Wrong Password");
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
