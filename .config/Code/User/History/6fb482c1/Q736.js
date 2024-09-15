user = {
    name: "Saugat",
    surname: "Rijal",
    set fullName(value) {
        [this.name, this.surname] = value.split(' '); // split on ' ' 
    }
    get fullName() {
        return `hey, yer name is ${this.name}`;
    }
}