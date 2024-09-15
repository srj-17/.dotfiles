// decide interface --> input, ouput 
// decide on steps to give output from the input
// these steps are your sub-problems
// solve these sub-problems from simplest to the thoughest

// sub-problem 1
// get user input
let answer = parseInt(prompt("please enter the number: "));

// sub-problem 2
// loop from 1 to entered number 
for (let i = 1; i <= answer; i++) {
    // sub-problem 3
    // if no /3 output "fizz" else buzz else fizzbzz
    // note that this can further be divided
    
    if (i % 3 === 0) {
        console.log("fizz");
    } else if (i % 3 === 0 && i % 5 === 0) {
        console.log()
    } else if (i % 3 === 0 && i % 5 === 0)

}