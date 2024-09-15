buttons = document.querySelectorAll("button");

for (button in buttons) {
    button.addEventListner("click", createParagraph)
}

function createParagraph() {
    let para = document.createElement("p");
    document.body.appendChild(para)
}