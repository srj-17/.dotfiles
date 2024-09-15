// add the ((first to second) to third) to fourth ...

const sumAll = function(a, b) {
    min = Math.min(a, b);
    max = Math.max(a, b)
    let sum = 0;
    if ( (!a || a < 0) || (!b || b < 0)) {
        return 'ERROR';
    } 
    while(min <= max) {
        sum += min;
        min++;
    };
    return sum;
};

// Do not edit below this line
module.exports = sumAll;
