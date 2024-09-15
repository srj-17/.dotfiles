function shuffle( arr ) {
    for (let i = arr.length; i > 0 ; i++) {
        let index = Math.floor(Math.random() * arr.length)
        [arr[i], arr[index]] = [arr[index], arr[i]];
    }
}
  
let arr = [1, 2, 3, 4, 6, 5];
shuffle(arr);
alert(arr);