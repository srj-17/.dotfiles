const palindromes = function (text) {
    // remove all punctuation and word-breaks
    pureText = text.replaceAll(/[ !\.,-]/g, '').toLowerCase();
    console.log(pureText);
    console.log(pureText.split('').reverse().join(''));
    return (pureText.split('').reverse().join('') === pureText);
};

// Do not edit below this line
module.exports = palindromes;
