const palindromes = function (text) {
    pureText = text.replaceAll(/[ \d!\.,-]/g, '').toLowerCase();
    console.log(pureText);
    console.log(pureText.split('').reverse().join(''));
    return pureText.split('').reverse() === pureText;
};

// Do not edit below this line
// module.exports = palindromes;
