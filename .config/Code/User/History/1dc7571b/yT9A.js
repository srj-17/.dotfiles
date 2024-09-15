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

function Ducatti() {
    this.brand = 'Ducatti';
}

Function.call(Ducatti, )

Car.prototype.getBrand = function() {
    return this.brand;
}

let bugatti = Car("bugatti");

console.log(bugatti.brand())