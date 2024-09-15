const a = new Array('name', 'roll');

document.querySelector('.demo').innerHTML = a

a.push('helo')

// beside using the for loop
a.forEach(element => {
    element.toUpperCase();
});