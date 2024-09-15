// recommended method for prototypal inheritence
function Person(name) {
    this.name = name;
}

function Player(name, marker) {
    this.name = name;
    this.marker = marker;
}

Player.prototype.getMarker = () => {
    console.log(`The marker is ${this.marker}`);
}

Person.prototype.sayName = () => {
    console.log(`The name is ${this.name}`);
}

Object.setPrototypeOf(Player.prototype, Person.prototype)

player = new Player("hari", "x");
person = new Person("ram");

player.sayName();
// ---------------------------------------------
// what to do

// Player prototype = copy of Person.prototype

// ------------------------------------------------------
// what not to do
