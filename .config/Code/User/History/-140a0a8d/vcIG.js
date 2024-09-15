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

Object.setPrototypeOf(Player.prototype, Person.prototype)

console.log(`Prototype after: ${Object.getPrototypeOf(Player.prototype)}`);

const player1 = new Player('steve', 'X');
const player2 = new Player('also steve', 'O');

player1.sayName(); // Hello, I'm steve!
player2.sayName(); // Hello, I'm also steve!

player1.getMarker(); // My marker is 'X'
player2.getMarker(); // My marker is 'O'

// ---------------------------------------------
// what to do

// Player prototype = copy of Person.prototype

// ------------------------------------------------------
// what not to do
