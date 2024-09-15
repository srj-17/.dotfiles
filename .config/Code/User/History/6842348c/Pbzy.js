

let yes = function () {
    alert("you clicked yes!")
}

let no = function () {
    alert ("You disagreed");
}
  
function ask(question, y, n) {   
    if (confirm(question)) y;
    else n;
}

ask("are you sure?", yes, no);