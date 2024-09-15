- These are the properties that execute when you access the object properties.
- These properties are represented by getter and setter properties

Eg: 
```js
user = {
    name: "Saugat",
    get name() {
        return `hey, yer name is ${this.name}`;
    }
}
```

- They look like normal properties from outside
    - i.e. when accessed, they can be accessed like `user.name` 