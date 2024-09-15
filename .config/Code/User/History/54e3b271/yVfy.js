function Book(title, author, pages, read) {
    this.info = () => {
        return `${title} by ${author}, ${pages}, ${read? "read" : "not read yet"}.`;
    }
}

book = new Book()