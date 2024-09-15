// recommended method for prototypal inheritence

function Person(name) {
    this.name = name;
}

Person.prototype.sayName = function () {
    console.log(`Hello, I'm ${this.name}`);
}

function Player(name, marker) {
    this.name = name;
    this.marker = marker;
}

Player.prototype.getMarker = function () {
    console.log(`My marker is ${this.marker}`);
}

console.log(Object.getPrototypeOf(Player.prototype));

// Player prototype = Person prototype
Object.setPrototypeOf(Player.prototype, Person.prototype);

console.log(Object.getPrototypeOf(Player.prototype));

const player1 = new Player('Steve', 'X');
const player2 = new Player('harry', 'O');

player1.sayName();
