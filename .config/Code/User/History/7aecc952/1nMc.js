function shuffle( arr ) {
    for (let i = arr.length; i > 0 ; i++) {
        let ind = Math.floor(Math.random() * arr.length)
        [arr[i], arr[ind]] = [arr[ind], arr[i]];
    }
}
  
let arr = [1, 2, 3, 4, 6, 5];
shuffle(arr);
alert(arr);