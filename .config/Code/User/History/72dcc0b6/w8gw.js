let humanScore = 0;
let computerScore = 0;

function getComputerChoice() {
    // create a new variable called choice and initialize it with random number between 1 and 3
    let choice = Math.ceil(Math.random() * 3);

    // return 'rock' 'paper' or 'sissors' to the user depending on the choice
    if (choice === 1) {
        return 'rock';
    } else if (choice === 2) {
        return 'paper';
    } else {
        return 'sissors';
    }
}

function getUserChoice() {
    let choice = prompt("Your choice (rock, paper or sissors) ?");
    return choice;
}

function playRound(humanChoice, computerChoice) {
    humanChoice = humanChoice.toLowerCase();
    if (humanChoice == computerChoice) {
        console.log("Draw");
    } else {
        switch
    }
}


