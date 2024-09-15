let humanScore = 0;
let computerScore = 0;

function getComputerChoice() {
    // initialize it with random number between 1 and 3
    let choice = Math.ceil(Math.random() * 3);

    if (choice === 1) {
        return 'rock';
    } else if (choice === 2) {
        return 'paper';
    } else {
        return 'sissors';
    }
}

function getUserChoice() {
    let choice = prompt("Your choice (rock, paper or sissors) ?").toLowerCase();
    if (choice != 'rock' && choice != 'paper' && choice != 'sissors') {
        alert("Wrong Choice! Enter one of rock, paper or sissors");
        getUserChoice();
    }
    return choice;
}

function playRound(humanChoice, computerChoice) {
    humanChoice = humanChoice;
    
    if (humanChoice === computerChoice) {
        console.log("Draw");
    } else {
        if (humanChoice == 'rock' && computerChoice == 'paper' || 
            humanChoice == 'paper' && computerChoice == 'sissors' ||
            humanChoice == 'sissors' && computerChoice == 'rock') {    
                computerScore++
                return `You lose! ${computerChoice} beats ${humanChoice}`;

        } else {
            humanScore ++;
            return `You win! ${humanChoice} beats ${computerChoice}`;
        }
    }
}

let choices = document.querySelector('.choices');
let clickCount = 0;

// add event listener for button press
choices.addEventListener('click', (event) => {
    clickCount++;
    let target = event.target;

    result = document.querySelector('.result');
    result.textContent = playRound(target.id, getComputerChoice());
    if (clickCount === 5) {
        win = document.querySelector('.win');
        win.textContent = 'Congratulations! You win!';
    }
});

// if button press occours, call playRound for computer and that human choice


