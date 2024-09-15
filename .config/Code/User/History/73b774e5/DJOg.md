- Accessor properties are defined by getter and setter properties

Eg: 
```js
user = {
    name: "Saugat",
    get name() {
        return `hey, yer name is ${this.name}`;
    }
}
```

- They look like normal properties from outside, but are essentially the functions that are executed when getting or setting a value

> The main point is that we don't access them, they are executed behind the scenes

- eg: `user.name` executes the above name() getter
- setter works in similar way


# Virtual properties
- If we use setter on a property that doesn't exist, a setter creates it virtually.
- We can access it later