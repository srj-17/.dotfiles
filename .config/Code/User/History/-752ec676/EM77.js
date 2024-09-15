function round(value, precision) {
  multiplier = Math.pow(10, precision || 0);
  value = Math.round((value * multiplier) / multiplier);
}


const convertToCelsius = function(fahrenheitTemp) {
  return round(1, ((fahrenheitTemp - 32) * 5 / 9));
};

const convertToFahrenheit = function(celsiusTemp) {
  return parseFloat(1, ((celsiusTemp * 9 / 5 + 32)));
};

// Do not edit below this line
module.exports = {
  convertToCelsius,
  convertToFahrenheit
};
