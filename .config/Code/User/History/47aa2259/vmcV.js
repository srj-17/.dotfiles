const repeatString = function(text, repeatTimes) {
    
    for (let i = 0; i < repeatTimes; i++) {
        text += text;
    }
    return text;
};

// Do not edit below this line
module.exports = repeatString;