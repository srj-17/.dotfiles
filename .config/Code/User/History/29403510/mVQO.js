function randomColor() {
    return `rgb(${random(0, 255)} ${random(0, 255)} ${random(0, 255)})`;
}
  

coolDiv = document.querySelector('.cool-div');
const bColor = randomColor()
coolDiv.style.setProperty('--background-color', red);