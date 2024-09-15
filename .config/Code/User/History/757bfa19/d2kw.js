const arr = [1, 2, 3, 4, 5];

triplearr = arr.map((num) => num * 3);
console.log(triplearr);

evenTripleArr = triplearr.filter((num) => !(num % 2))
console.log(evenTripleArr);

sum = evenTripleArr.reduce((sum, num) => {
    return sum + num;
}, 0);

console.log(sum);