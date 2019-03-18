double celsiusToFahrenheit(double celsius) {
  return celsius * 1.8 + 32.0;
}

double celsiusToKelvin(double celsius) {
  return celsius + 273.15;
}


double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32.0) / 1.8;
}

double fahrenheitToKelvin(double fahrenheit) {
  return (fahrenheit + 459.67) * (5.0 / 9.0);
}


double kelvinToCelsius(double kelvin) {
  return kelvin - 273.15;
}

double kelvinToFahrenheit(double kelvin) {
  return kelvin * (5.0 / 9.0) - 459.67;
}