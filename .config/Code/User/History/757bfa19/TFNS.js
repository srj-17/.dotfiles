const arr = [1, 2, 3, 4, 5];
let sum = 0;

triplearr = arr.map((num) => num * 3);

triplearr.forEach(num => {
    if (num % 2 === 0) {
        sum += num;
    }
});