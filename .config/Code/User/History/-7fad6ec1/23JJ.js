// for each number in the array
    // check if each provided number to remove equals the number of the array, 
        // if yes, remove the number in the array and break
    // end loop
// endloop
// return the array number

const removeFromArray = function(numbers, ...removeNumbers) {
    for (const no of numbers) {
        for (const _ of removeNumbers) {
            if (no === _) {
                numbers.splice()
            }
        }
    }
};

// Do not edit below this line
module.exports = removeFromArray;
