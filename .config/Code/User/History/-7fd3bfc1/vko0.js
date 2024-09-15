user = {
    set name(value) {
        if (value.length < 2) {
            console.log('too damn short');
            return;
        }
        _name = value;
        // _name is internal data property that *really* stores our value
        // this is a trick to use accessor properties to 
    },
    get name() {
        return _name;
    }
}

console.log(user.name='');
console.log(user.name='hello');
console.log(user.name)