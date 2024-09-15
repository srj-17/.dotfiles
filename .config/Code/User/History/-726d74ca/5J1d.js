// add the ((first to second) to third) to fourth ...

const sumAll = function(min, max) {
    let sum = 0;
    do {
        sum += min;
        min++;
    } while(min !== max);
    return sum;
};

// Do not edit below this line
module.exports = sumAll;
