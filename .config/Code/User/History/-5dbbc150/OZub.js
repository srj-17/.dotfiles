let add7 = (number) => number + 7;

let multiply = (num1, num2) => num1 * num2;

function capitalize(text) {
    if (!text) {
        console.error("Not a valid string of text");
    }
    firstLetter = text.charAt(0).toUpperCase();
    subText = text.slice(1);
    return firstLetter + subText;
}

