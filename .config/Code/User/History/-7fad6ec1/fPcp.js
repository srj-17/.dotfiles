// for each number in the array
    // check if each provided number to remove equals the number of the array, 
        // if yes, remove the number in the array and break
    // end loop
// endloop
// return the array number

const removeFromArray = function(numbers, ...removeNumbers) {
    for (let i = 0; i < numbers.length; i++) {
        for (const no of removeNumbers) {
            if (numbers[i] === no) {
                numbers.splice(i, 1);
            }
        }
    }
    return numbers;
};

// Do not edit below this line
module.exports = removeFromArray;
