// for each number in the array
    // check if each provided number to remove equals the number of the array, 
        // if yes, remove the number in the array and break
    // end loop
// endloop
// return the array number

const removeFromArray = function(numbers, ...removeNumbers) {
    let removedCount = 0;
    for (let i = 0; i < numbers.length; i++) {
        
        for (const no of removeNumbers) {
            if (numbers[i-removedCount] === no) {
                numbers.splice(i-removedCount, 1);
                removedCount++;
            }
        }
    }
    return numbers;
};

// Do not edit below this line
module.exports = removeFromArray;