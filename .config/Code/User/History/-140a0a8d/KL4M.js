// recommended method for prototypal inheritence
function Person(name) {
    this.name = name;
}

function Player(name, marker) {
    this.name = name;
    this.marker = marker;
}

Player.prototype.getMarker() {
    
}

Object.setPrototypeOf(Person, Player.prototype)
// ---------------------------------------------
// what to do

// Player prototype = copy of Person.prototype

// ------------------------------------------------------
// what not to do