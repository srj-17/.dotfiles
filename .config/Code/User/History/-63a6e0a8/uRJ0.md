# JSON
- JavaScript Object Notation
- Its a universal format to transmit data in the web
- First, its a *text file / string* with extension `.json`
    - Basically, think of it as js object *inside string*
- It *follows* the js object *syntax*, so called JSON.
- MIME Type of `application/json`
    - MIME type = media type / content type 
    - they're strings sent along with file to denote their media type

> *They should be parsed before they can have properties of objects in javascript (and other languages),
> else, they're just strings of text*

# Note
- you can convert json to array as json is a string and strings can be converted to arrays
> JSON can actually take the form of any data type that is valid for inclusion inside JSON, not just arrays or objects. So for example, a single string or number would be valid JSON. 
> - mdn
- so, its flexible

- string -> object ==> serialization 
- deserilization the other way around

# Random
- json is string with specified data format