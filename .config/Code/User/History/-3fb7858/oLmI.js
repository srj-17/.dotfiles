
function isNotPrime(a) {
    for (let i = 2; i < a; i++) {
        numberDivided = a % i; 
        if (numberDivided) {
            return false;
        } 
    }
    return true;
}

do {
    n = Number(prompt("Enter an *valid* integer"));
    if(isNotPrime(n)) {
        alert("Is a not prime number");
    } else {
        alert("Is a prime number")
    }
    break;
} while(n < 1);