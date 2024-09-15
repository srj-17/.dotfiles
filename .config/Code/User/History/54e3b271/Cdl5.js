function Book(title, author, pages, read) {
    this.info = () => {
        console.log(`${title} by ${author}, ${pages}, ${read? "read" : "not read yet"}.`);
    }
}