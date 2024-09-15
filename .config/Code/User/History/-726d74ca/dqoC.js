// add the ((first to second) to third) to fourth ...

function isNumeric(x) {
    if (x >= 0 && (typeof x == 'number')) return true;
    else return false;
}


const sumAll = function(min, max) {
    const CALCULABLE = isNumeric(min) && isNumeric(max);
    if (!CALCULABLE) {
        return 'ERROR';
    } 
    if (min > max) [min, max] = [max, min];
    let sum = 0;
    while(min <= max) {
        sum += min;
        min++;
    };
    return sum;
};

// Do not edit below this line
module.exports = sumAll;
