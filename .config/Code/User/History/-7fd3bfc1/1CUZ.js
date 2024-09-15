user = {
    set name(value) {
        if (value.length < 2) {
            console.log('too damn short');
            return;
        }
        _name = value;
        
    },
    get name() {
        return _name;
    }
}

console.log(user.name='');
console.log(user.name='hello');
console.log(user.name)