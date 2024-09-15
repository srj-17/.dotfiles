const repeatString = function(text, repeatTimes) {
    let tempString = '';
    for (let i = 0; i < repeatTimes; i++) {
        tempString += text;
    }
    return tempString;
};

// Do not edit below this line
module.exports = repeatString;
