// recommended method for prototypal inheritence
function Person(name) {
    this.name = name;
}

Person.prototype.sayName = () => {
    console.log(`The name is ${this.name}`);
}

function Player(name, marker) {
    this.name = name;
    this.marker = marker;
}

Player.prototype.getMarker = () => {
    console.log(`The marker is ${this.marker}`);
}

console.log(`Prototype before: ${Object.getPrototypeOf(Player.prototype)}`);
console.log(`Prototype before: ${Object.getPrototypeOf(Player.prototype)}`);

Object.setPrototypeOf(Player.prototype, Person.prototype)



pl = new Player("hari", "x");
pe = new Person("ram");

pl.getMarker();
pl.sayName();
// ---------------------------------------------
// what to do

// Player prototype = copy of Person.prototype

// ------------------------------------------------------
// what not to do
