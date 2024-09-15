// 'this' references the object that is currently calling the function
// or you can say, 'this' references an object of which the function is the property
function Car(brand) {
    // if `this` or original object is not prototypically inherited from the prototype defined 
    // in this Car constructor, throw the error 
    // if (!(this instanceof Car)) {
    if (!(new.target)){
        throw Error('Must use operator new');
    }
    this.brand = brand;
}

function Speed() {
    this.speed = 120;
}

Speed.prototype.getSpeed = () => {
    return this.speed;
}

var speedCar = new Speed();
console.log(speedCar.getSpeed());
// undefined cause arrow function doesn't create its own execution context and thus 
// inherits the `this` from the outer execution context on which it was defined

function getBrand(prefix) {
    console.log(prefix + this.brand);
}

let ducatti = {
    brand: " ducatti",
}

getBrand.call(ducatti, "this is a");

Car.prototype.getBrand = function() {
    return this.brand;
}

let bugatti = Car("bugatti");

console.log(bugatti.brand())