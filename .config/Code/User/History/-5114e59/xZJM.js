// object.create makes the prototype inheritence possible in javascript
// Object.create(prototypeObject, propertyObject)
// creates an object with prototype reference to prototypeObject

// every constructor has a prototype property
const myObject = Object.create(Object.prototype)
const myLiteral = {}
const noProto = Object.create(null)
const car = function ()

console.dir(myObject);
console.dir(myLiteral);
console.dir(noProto);