// for each number in the array
    // check if each provided number to remove equals the number of the array, 
        // if yes, remove the number in the array and break
    // end loop
// endloop
// return the array number

const removeFromArray = function(numbers, ...removeNumbers) {
    let removedCount = 0;
    for (let i = 0; i < numbers.length; i++) {

        // array moves one step left (shifts) each tiem a number is removed from it
        Loop: for (const no of removeNumbers) {
            if (numbers[i-removedCount] === no) {
                numbers.splice(i-removedCount, 1);
                removedCount++;
                break Loop;
            }
        }
    }
    return numbers;
};

// Do not edit below this line
module.exports = removeFromArray;