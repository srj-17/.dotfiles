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
oneboo