const arr = [1, 2, 3, 4, 5];
let sum = 0;

triplearr = arr.map((num) => num * 3);

triplearr.forEach(N => {
    if (N % 2 === 0) {
        sum += N;
    }
});

console.log(sum);