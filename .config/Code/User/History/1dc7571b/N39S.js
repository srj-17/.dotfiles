// 'this' references the object that is currently calling the function
// or you can say, 'this' references an object of which the function is the property
function Car(brand) {
    this.brand = brand;
}

var bugatti = Car("bugatti");