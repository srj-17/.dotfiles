n = Number(prompt("Enter an integer"));

function isPrime(a) {
    let primeFlag = false;
    for (let i = 2; i < a; i++) {
        numberDivided = a % i;
        if (numberDivided) {
            return false;
        } else {
            return true;
        }
    }
}

if (n > 1) {
    if(isPrime(n));
}