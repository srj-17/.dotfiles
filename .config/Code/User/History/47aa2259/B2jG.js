const repeatString = function(text, repeatTimes) {
    let tempString = '';
    if (repeatTimes)
    for (let i = 0; i < repeatTimes; i++) {
        tempString += text;
    }
    return tempString;
};

// Do not edit below this line
module.exports = repeatString;
