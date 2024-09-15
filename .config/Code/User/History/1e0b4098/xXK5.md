# ESM (ES6 MODULES) 
- allow us to write javascript code across multiple files without using iife module hack
- i.e. creating an iife module and exposing only things that you want to expose to other files.

Also, using iife modules also means that we can't have global variables that we want in one file and not in another file. They *will* get exposed to another file if we declare global variables like `let a = 1;` in say `1.js` and access them from, say `2.js` like `console.log(a)`. We don't want that. 

ES6 gives us this power. The