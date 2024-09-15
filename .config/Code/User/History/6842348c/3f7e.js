
// so they're like reference variables to functions
// or on surface, think of them as variables that store functions
let yes = function () {
    alert("you clicked yes!")
}

let no = function () {
    alert ("You disagreed");
}
  
function ask(question, y, n) {   
    if (confirm(question)) y();
    else n();
}

ask("are you sure?", yes, no);