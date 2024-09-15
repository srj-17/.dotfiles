// add the ((first to second) to third) to fourth ...

const sumAll = function(a, b) {
    min = Math.min(a, b);
    max = Math.max(a, b)
    let sum = 0;
    do {
        sum += min;
        min++;
    } while(min <= max);
    return sum;
};

// Do not edit below this line
module.exports = sumAll;
