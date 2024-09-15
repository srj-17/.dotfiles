const removeFromArray = function(numbers, ...removeNumbers) {
    let removedCount = 0;

    // we need this because later the size of array decreases when numbers are removed, 
    // but we need to iterate through all the given numbers and not break out of loop early
    const len = numbers.length
    for (let i = 0; i < len; i++) {

        // array moves one step left (shifts) each tiem a number is removed from it
        for (const no of removeNumbers) {
            if (numbers[i-removedCount] === no) {
                numbers.splice(i-removedCount, 1);
                removedCount++;
                break;
            }
        }
    }
    return numbers;
};

// Do not edit below this line
module.exports = removeFromArray;
