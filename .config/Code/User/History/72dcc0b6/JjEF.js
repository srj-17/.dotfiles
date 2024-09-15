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
    
    // print Draw when humanChoice equals computerChoice 
    if (humanChoice === computerChoice) {
        console.log("Draw");
    } else {
        // else if computerChoice beats humanChoice, print 'You lose! .. beats ..'
        if (humanChoice == 'rock' && computerChoice == 'paper' || 
            humanChoice == 'paper' && computerChoice == 'sissors' ||
            humanChoice == 'sissors' && computerChoice == 'rock') {
            console.log(`You lose! ${computerChoice} beats ${humanChoice}`);
        
        // else print the winning message
        } else {
            console.log(`You win! ${humanChoice} beats ${computerChoice}`);
        }
    }
}



