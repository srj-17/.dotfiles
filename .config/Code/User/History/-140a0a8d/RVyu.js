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

// // Player prototype = copy of Person.prototype
// Object.setPrototypeOf(Player.prototype, Person.prototype);

// console.log(Object.getPrototypeOf(Player.prototype));

// const player1 = new Player('Steve', 'X');
// const player2 = new Player('harry', 'O');

// player1.sayName();


// ------------------------------------------------------
// what not to do

// player prototype = original reference of person prototype
Player.prototype = Person.prototype;

function Enemy(name) {
    this.name = name;
    this.marker = '^';
    }
  
  // Not again!
  // Use Object.setPrototypeOf(Enemy.prototype, Person.prototype)
  Enemy.prototype = Person.prototype;
  
  Enemy.prototype.sayName = function() {
    console.log('HAHAHAHAHAHA');
  };
  
  const carl = new Player('carl', 'X');
  carl.sayName(); // Uh oh! this 