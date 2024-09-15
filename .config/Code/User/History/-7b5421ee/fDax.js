const palindromes = function (text) {
    pureText = text.replaceAll(/[ \d!\.,-]/g, '').toLowerCase();
    console.log(pureText);
    console.log(pureText.split('').reverse().join(''));
    return 
};

// Do not edit below this line
// module.exports = palindromes;
