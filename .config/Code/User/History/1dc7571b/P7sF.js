// 'this' references the object that is currently calling the function
// or you can say, 'this' references an object of which the function is the property

let counter = function() {
    let count= 0;
    () {
        return ++this.count;
    };
};

var hello = counter()