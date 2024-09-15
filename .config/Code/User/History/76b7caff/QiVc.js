// constructor for person
function person(name) {
    this.name = name;
}

person.prototype.getName = () => {
    console.log(`Name is ${this.name}`);
}

function player(name, marker) {
    this.name = name;
    this.marker = marker;
}

player.prototype.getMarker = () => {
    console.log(`Player marker is ${this.marker}`);
}

Object.setPrototypeOf(player.prototype, person.prototype);

