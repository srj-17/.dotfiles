- Mixins are templates for classes
- More precisely, they're functions that take classes as input and output classes extending the input class.
- Mixins are to classes what factory functions are to objects
- Why? 
- Mainly, to avoid inheritence. 

# mixin => mix different classes into one class and return it

- since they're mainly for making multiple inheritence possible, without having problems of ambiguity.
- What's more, they're even better than inheritence because instead of inheriting all the methods and fields of superclass, you can only inherit some needed properties. 

# Follow the property -> compositions over inheritence
## composition
- Class has reference to an object of 