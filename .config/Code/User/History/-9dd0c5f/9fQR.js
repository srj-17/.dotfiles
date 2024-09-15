buttons = document.querySelectorAll("button");

for (button in buttons) {
    button.addEventListner("click", createParagraph)
}

function createParagraph() {
    let para = document.createElement("p");
    para.textContent = 'This is a new paragraph'
    document.body.appendChild(para);
}