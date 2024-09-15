
function isPrime(a) {
    for (let i = 2; i < a; i++) {
        numberDivided = a % i; 
        if (!numberDivided) { 
            return false;       
        } 
    }
    return true;
}

n = Number(prompt("Enter an *valid* integer"));

for (let i = 0; i < n; i++) {
    if (isPrime(i)) {
        alert(i);
    }  
}