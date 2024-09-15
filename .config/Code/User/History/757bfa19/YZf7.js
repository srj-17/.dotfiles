const arr = [1, 2, 3, 4, 5];

triplearr = arr.map((num) => num * 3);

evenTripleArr = arr.filter((num) => !(num % 2))

sum = evenTripleArr.reduce((sum, num) => {
    return sum + num;
}, 0);

console.log(sum);