const fibonacci = function(n) {
    if (+n < 0) return "OOPS"
    return (+n === 0) ? 
           0 :
           (+n === 1 || +n == 2) ?
           1 :
           (fibonacci( n-1 ) + fibonacci( n-2 ));
};

// Do not edit below this line
module.exports = fibonacci;