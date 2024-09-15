class User {
    constructor(name) {
        this.name = name;
    }

    sayHi() {
        alert(`hi, ${this.name}`);
    }
}

user = new User('Saugat');
user.sayHi();