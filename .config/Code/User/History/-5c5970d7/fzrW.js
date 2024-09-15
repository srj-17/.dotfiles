const add = function(a, b) {
  return a + b;
};

const subtract = function(a, b) {
	return a - b;
};

const sum = function(arr) {
	return arr.reduce(((sum, element) => sum + element), 0);
};

const multiply = function(arr) {
  return arr.reduce(((mul, element) => mul * element), 1);
};

const power = function(a, b) {
  return a * power(b-1);
};

const factorial = function() {
	return 
};

// Do not edit below this line
module.exports = {
  add,
  subtract,
  sum,
  multiply,
  power,
  factorial
};
