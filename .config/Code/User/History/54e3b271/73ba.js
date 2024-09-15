function Book(title, author, pages, read) {
    this.info = () => {
        return `${title} by ${author}, ${pages}, ${read? "read" : "not read yet"}.`;
    }
}

// its always best to return things from function and use console.log() instead of
// directly using it inside the function
oneBook = new Book("deep work", "cal newport", 200, false);

console.log(oneBook.info());

// prototype of an object is just another object that the original object inherits from
twoBook = new Book("harry potter", "jk rowlings", 600, false);

console.log(Object.getPrototypeOf(oneBook) === Object.getPrototypeOf(twoBook));
console.log(Object.getPrototypeOf(oneBook) === Book.prototype);

// --
console.log(Object.getPrototypeOf(Book.prototype) === Object.prototype);

// output is not of importance, it might be different in different browsers
console.log(oneBook.valueOf());

// 
console.log(Object.prototype.hasOwnProperty("valueOf"));
