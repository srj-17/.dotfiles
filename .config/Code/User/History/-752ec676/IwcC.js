const convertToCelsius = function(fahrenheitTemp) {
  return Math.round((fahrenheitTemp - 32) * 5 / 9);
};

const convertToFahrenheit = function(celsiusTemp) {
  return Math.round(celsiusTemp * 9 / 5 + 32);
};

// Do not edit below this line
module.exports = {
  convertToCelsius,
  convertToFahrenheit
};
