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

Object.getPrototypeOf(Player.prototype);

// 
Object.setPrototypeOf(Player.prototype, Person.prototype);