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
  return (b === 0) ? 1 : a * power(a, b-1);
};

const factorial = function(a) {
	return (a === 0) ? 1 : a * factorial(a - 1);
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
