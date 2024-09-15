p = document.querySelector("p");
z = 6;

function a() {
    let x = 2;
    output(x);
    return x;
}

function b() {
    let y = 3;
    return y;
}

function output(item) {
    p.textContent = `the variable is ${item}`;
}