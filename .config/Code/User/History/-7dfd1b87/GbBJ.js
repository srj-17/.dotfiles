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

let theme = document.querySelector("select");
let html = document.querySelector("html");

document.body.style.padding = "10px";

function updateBgcolor(bgColor, textColor) {
    html.style.backgroundColor = bgColor;
    html.style.textColor = textColor;
}

theme = addEventListener("change", () =>
{
    
} )