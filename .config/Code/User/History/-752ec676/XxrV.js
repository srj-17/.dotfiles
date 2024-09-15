function round(value, precision) {
  multiplier = Math.pow(10, precision || 0);
  value = Math.round((value * multiplier) / multiplier);
}


const convertToCelsius = function(fahrenheitTemp) {
  return Math.round((fahrenheitTemp - 32) * 5 / 9);
};

const convertToFahrenheit = function(celsiusTemp) {
  return parseFloat((celsiusTemp * 9 / 5 + 32).toFixed(1));
};

// Do not edit below this line
module.exports = {
  convertToCelsius,
  convertToFahrenheit
};
