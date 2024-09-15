function makeFunc() {
    const name = "Mozilla";
    function displayName() {
      console.log(name);
    }
    return displayName;
  }
  
// the question is: myFunc() is an outside function 
// `name` is block (here function) scoped
// why does myFunc() have access to name? 
// answer is closures
  const myFunc = makeFunc();
  myFunc();
  
// js functions form closures 
// closure = function + lexical environment (that the func was defined in )
// lexical environment contains the `in-scope` variables available when
// the closure / function was created
// the created function maintains a reference to its lexical environment