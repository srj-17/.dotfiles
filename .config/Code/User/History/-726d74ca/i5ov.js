// add the ((first to second) to third) to fourth ...

function isNumeric(x) {
    if (x >= 0 && (typeof x == 'number')) return true;
    else return false;
}


const sumAll = function(a, b) {
    const CALCULABLE = isNumeric(a) && isNumeric(b);
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
