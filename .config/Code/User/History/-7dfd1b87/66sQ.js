let userName = prompt("Who's there?");
let password;

if (userName == '' || userName == null) {
    alert("Cancelled!");
} else if (userName == 'Admin') {
    password = prompt("Password?");
} else {
    prompt("")
}
