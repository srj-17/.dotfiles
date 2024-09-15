

let yes = function () {
    alert("you clicked yes!")
}

let no = function () {
    alert ("You disagreed");
}
  
function ask(question, y, n) {   
    if (confirm(question)) yes;
    else no;
}

ask("are you sure?", yes, no);