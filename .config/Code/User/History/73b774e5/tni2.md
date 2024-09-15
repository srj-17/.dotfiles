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
# Accessor functions
- They provide access to the accessor properties
- These are not accessible directly. 
> they are executed behind the scenes when accessor properties are accessed

- eg: 
    - `user.fullName` executes the above fullName() getter
    - `user.fullName = "John Smith"` executes the fullName() setter 

> Note that the getter, if the accessor property is not explicitly defined, can't be accessed without the setter 


# Virtual properties
- If we use setter on a property that doesn't exist, a setter creates it virtually.
- We can access it later