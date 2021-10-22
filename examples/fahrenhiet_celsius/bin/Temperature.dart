class Temperature {
  double toFahrenheit(double temp) {
    double fahrenheit = (temp * 1.8) + 32;
    return fahrenheit;
  }

  double toCelsius(double temp) {
    double celcius = (temp - 32) / 1.8;
    return celcius;
  }
}
