
function isPrime(a) {
    for (let i = 2; i < a; i++) {
        numberDivided = a % i;
        if (!numberDivided) {
            return false;
        } 
    }
    return true;
}

do {
    n = Number(prompt("Enter an *valid* integer"));
    if(isPrime(n)) {
        alert("Is a prime number");
    } else {
        alert("Isn't a prime number")
    }
    break;
} while(n < 1);
