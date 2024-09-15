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
  