// add the ((first to second) to third) to fourth ...

const sumAll = function(a, b) {
    const CALCULABLE = !((isNaN(a) || a < 0) && (isNaN(b) || b < 0));
    if (!CALCULABLE) {
        return 'ERROR';
    } 
    min = Math.min(a, b);
    max = Math.max(a, b)
    let sum = 0;
    while(min <= max) {
        sum += min;
        min++;
    };
    return sum;
};

// Do not edit below this line
module.exports = sumAll;
