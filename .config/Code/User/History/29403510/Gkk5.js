function random(min, max) {
    const num = Math.floor(Math.random() * (max - min)) + min;
    return num;
}

function randomColor() {
    return `rgb(${random(0, 255)} ${random(0, 255)} ${random(0, 255)})`;
}
  
ba = coolDiv.style.getPropertyValue("--background-color");
console.log(ba);

const bColor = randomColor()
coolDiv.style.setProperty('--background-color', coolDiv);