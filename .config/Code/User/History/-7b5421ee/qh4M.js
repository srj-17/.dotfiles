const palindromes = function (text) {
    pureText = text.replaceAll(/[ \d!\.,-]/g, '').toLowerCase();
    console.log(pureText);
    return pureText.split('').reverse() === pureText;
};

// Do not edit below this line
// module.exports = palindromes;
