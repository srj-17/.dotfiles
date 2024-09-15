

let yes = function () {
    alert("you clicked yes!")
}

let no = function () {
    alert ("You disagreed");
}
  
function ask(question, yes, no) {   
    if (confirm(question)) yes;
    else no;
}

ask("are you sure?")