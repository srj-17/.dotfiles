- Accessor properties are defined by getter and setter functions
- These are behind the scenes functions that execute when the accessor properties are accessed (get or set)
- You might ask, isn't every property in an object accessible, yes that's why we're calling these properties `accessor` and not `accessible` properties.
- These properties help us access other `normal properties` of the object in a more controlled manner.

Eg: 
```js
user = {
    name: "Saugat",
    surname: "Rijal",
    set fullName(value) {
        [this.name, this.surname] = value.split(' '); // split on ' ' 
    }
    get fullName() {
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