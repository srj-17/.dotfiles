// 'this' references the object that is currently calling the function
// or you can say, 'this' references an object of which the function is the property
function Car(brand) {
    // if this is not p
    if (!(this instanceof Car)) {
        throw Error('Must use operator new');
    }
    this.brand = brand;
}

Car.prototype.getBrand = function() {
    return this.brand;
}

let bugatti = Car("bugatti");

console.log(bugatti.brand())