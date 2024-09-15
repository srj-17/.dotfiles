function Book(title, author, pages, read) {
    this.info = () => {
        return `${title} by ${author}, ${pages}, ${read? "read" : "not read yet"}.`;
    }
}

// its always best to return things from function and use console.log() instead of
// directly using it inside the function
oneBook = new Book("deep work", "cal newport", 200, false);

// console.log count 1
console.log(oneBook.info());

// prototype of an object is just another object that the original object inherits from
twoBook = new Book("harry potter", "jk rowlings", 600, false);

// 2
console.log(Object.getPrototypeOf(oneBook) === Object.getPrototypeOf(twoBook));

// 3
console.log(Object.getPrototypeOf(oneBook) === Book.prototype);

// 4
console.log(Object.getPrototypeOf(Book.prototype) === Object.prototype);

// 5
// output is not of importance, it might be different in different browsers
console.log(oneBook.valueOf());

// 6
console.log(Object.prototype.hasOwnProperty("valueOf"));

// 7
console.log(oneBook.hasOwnProperty("valueOf"));

// 8
console.log(Object.getPrototypeOf(oneBook).hasOwnProperty("valueOf"))
// returns false, but we can use valueOf function with oneBook object, why?
// because Object.prototype object has the valueOf function 

// so, the prototype of each object in turn inherits from prototype of Object 
// i.e. every prototype inherits from Object.prototype

// 9
console.log(Object.getPrototypeOf(oneBook))