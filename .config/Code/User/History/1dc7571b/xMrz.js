// 'this' references the object that is currently calling the function
// or you can say, 'this' references an object of which the function is the property
function Car(brand) {
    this.brand = brand;
}

Car.prototype.getBrand = function() {
    if (!(this instanceof Car)) {
        throw Error('Must use operator new');
    }
    return this.brand;
}

let bugatti = Car("bugatti");

console.log(bugatti.brand())