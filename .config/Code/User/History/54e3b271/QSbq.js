function Book(title, author, pages, read) {
    this.info = () => {
        console.log(`The Hobbit by ${author}, ${pages}, ${read? "read" : "not read yet"}.`);
    }
}