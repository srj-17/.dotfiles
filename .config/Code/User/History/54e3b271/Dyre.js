function Book(title, author, pages, read) {
    this.info = () => {
        return `${title} by ${author}, ${pages}, ${read? "read" : "not read yet"}.`;
    }
}

// its always best to return things from function and use console.log() instead of
// directly using it inside the function
newBook = new Book("deep work", "cal newport", 200, false);

console.log(newBook.info());

// prototype of an object