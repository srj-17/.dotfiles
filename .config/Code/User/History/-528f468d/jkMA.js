let container = document.querySelector('.container'); 
let askButton = document.querySelector('.askBoxNum button');
let input = document.querySelector('.askBoxNum input');

function createSquareGrid(squaresPerSide) {
    for (let i = 0; i < squaresPerSide; i++) {
        let dimension = 480 / squaresPerSide; // width or height of pixels according to container width of 960
        const row = document.createElement('div');
        row.classList.toggle('row');
        row.style.display = 'flex';
        row.style.flexDirection = 'row';
        for (let j = 0; j < squaresPerSide; j++) {
            const pixel = document.createElement('div');
            pixel.classList.toggle('pixel');
            pixel.style.cssText = `width: ${dimension}px; height: ${dimension}px; flex: auto;`;
            row.appendChild(pixel);
        }   
        container.appendChild(row);
    }
}

function colorPixel(pixel, count) {
    let red = Math.floor(Math.random() * 255);
    let green = Math.floor(Math.random() * 255);
    let blue = Math.floor(Math.random() * 255);
    let opacity;
    if (count < 10) {
        opacity = count * 0.1;
    } 
    pixel.style.backgroundColor = `rgb(${red}, ${green}, ${blue}, ${opacity})`;
}

function draw() {
    const pixelsNodeList = document.querySelectorAll('.pixel');
    const pixels = Array.from(pixelsNodeList);
    pixels.forEach(pixel => {
        let count = 1;
        pixel.addEventListener('mouseenter', () => {
            colorPixel(pixel, count);
            count++;
        })        
    });
}

function createGridAndDraw(squaresPerSide) {
    createSquareGrid(squaresPerSide);
    draw();
}

askButton.addEventListener('click', () => {
    inputNum = Number(input.value);
    
    // reverse the inputted range value
    inputNum = input.max - input.value;
    
    console.log(inputNum);
    rows = document.querySelectorAll('.row');
    rows = Array.from(rows);
    rows.forEach(row => {
        container.removeChild(row);
    });
    createGridAndDraw(inputNum);
})

createGridAndDraw(10);