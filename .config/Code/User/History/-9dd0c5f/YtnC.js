const buttons = document.querySelectorAll("button");

for (const button of buttons) {
    button.addEventListner("click", createParagraph);
}

function createParagraph() {
    const para = document.createElement("p");
    para.textContent = 'This is a new paragraph! You clicked a button!';
    document.body.appendChild(para);
}