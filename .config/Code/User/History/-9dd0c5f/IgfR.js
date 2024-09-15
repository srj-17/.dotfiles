const buttons = document.querySelectorAll("button");

for (const button of buttons) {
    button.addEventListener("click", createParagraph);
}

function createParagraph(event) {
    const para = document.createElement("p");
    para.textContent = 'This is a new paragraph! You clicked a button!';
    document.body.appendChild(para);
}
