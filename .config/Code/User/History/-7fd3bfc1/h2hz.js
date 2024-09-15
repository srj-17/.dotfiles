user = {
    set name(value) {
        if (value.length < 2) {
            console.log('too damn short');
            return;
        }
        _name = value;
    }
}