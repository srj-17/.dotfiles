// for each number in the array
    // check if each provided number to remove equals the number of the array, 
        // if yes, remove the number in the array and break
    // end loop
// endloop
// return the array number

const removeFromArray = function(numbers, ...removeNumbers) {
    let removedCount = 0;

    // we need this because later the size of array decreases when numbers are removed, 
    // but we need to iterate through all the given numbers
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