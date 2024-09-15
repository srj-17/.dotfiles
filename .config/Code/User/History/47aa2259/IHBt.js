const repeatString = function(text, repeatTimes) {
    let tempString = '';
    if (Math.sign(repeatTimes) == -1) {
        return 'ERROR';
    }
    for (let i = 0; i < repeatTimes; i++) {
        tempString += text;
    }
    return tempString;
};

// Do not edit below this line
module.exports = repeatString;
