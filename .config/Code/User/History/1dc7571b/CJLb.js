// 'this' references the object that is currently calling the function
// or you can say, 'this' references an object of which the function is the property

let counter = {
    count: 0,
    next: function () {
        return ++this.count;
    },
};

let count = counter.next.bind()

counter.next();