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

while(n < 1) {
        if(isPrime(n)) {
            alert("Is a prime number");
        } else {
            alert("Isn't a prime number")
        }
        break;
    } else {
        alert("enter a valid number");
    }
}
