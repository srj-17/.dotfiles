n = Number(prompt("Enter an integer"));

function isPrime(a) {
    let primeFlag = false;
    for (let i = 2; i < a; i++) {
        numberDivided = a % i;
        if (numberDivided) {
            alert("Not a prime number!");
            break;
        }       
    }
}

if (n > 1) {
    if(isPrime(n));
}