function random(min, max) {
    const num = Math.floor(Math.random() * (max - min)) + min;
    return num;
}

function randomColor() {
    return `rgb(${random(0, 255)} ${random(0, 255)} ${random(0, 255)})`;
}
  
coolDiv = document.querySelector('.cool-div');
console.log(coolDiv);

ba

const bColor = randomColor()
coolDiv.style.setProperty('--background-color', coolDiv);