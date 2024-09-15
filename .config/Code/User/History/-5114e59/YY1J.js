// object.create makes the prototype inheritence possible in javascript
// Object.create(prototypeObject, propertyObject)
// creates an object with prototype reference to prototypeObject

// every constructor has a prototype property
const myObject = Object.create(Object.prototype)
const myLiteral = {}
const noProto = Object.create(null)
const Car = function (color) {
    this.color = color;
}

const car1 = new Car("red");
const car2 = Object.create(Car.prototype);

console.dir(myObject);
console.dir(myLiteral);
console.dir(noProto);
console.dir(car1);
console.dir(car2);

// one of the main functions of Object.create() is to extend the constructors [like extending classes]

Car.prototype = {
    getColor() {
        return this.color;
    }
};

const ToyCar = function () {

};

ToyCar.prototype = Object.create(Car.prototype);
// sets the ToyCar reference to Car prototype

const legoCar = new ToyCar();

console.dir(legoCar instanceof ToyCar);
console.dir(legoCar instanceof )
