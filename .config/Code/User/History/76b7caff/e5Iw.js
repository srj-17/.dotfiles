// constructor for person
function person(name) {
    this.name = name;
}

person.prototype.getName = () => {
    console.log(`Name is ${this.name}`);
}

function player(name, marker) {
    console.log(`Mark is`)
}