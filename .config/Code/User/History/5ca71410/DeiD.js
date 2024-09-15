const reverseString = function(text) {
    let tempString = '';

    for (let i = 0; i < text.length; i++) {
        // GET i'th character from the last and concatenate to the tempString
        tempString += text.at(-(i+1));
    }
    return tempString;
};

// Do not edit below this line
module.exports = reverseString;
