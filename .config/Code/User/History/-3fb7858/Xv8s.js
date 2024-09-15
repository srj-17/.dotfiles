n = Number(prompt("Enter an integer"));

function isPrime(a) {
    for (let i = 2; i < a; i++) {
        numberDivided = a % i;
        if (numberDivided) {
            return false;
        } 
    }
    return true;
}

if (n > 1) {
    if(isPrime(n)) {
        print("")
    }
}