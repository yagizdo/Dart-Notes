import 'dart:io';

import 'Temperature.dart';

void main() {
  var tempObject = Temperature();
  print("Please enter a degree in celsius..");
  double userInput = double.parse(stdin.readLineSync()!);

  double fahrenheit = tempObject.toFahrenheit(userInput);
  print("$userInput °C = $fahrenheit °F");

  double celsius = tempObject.toCelsius(fahrenheit);
  print("$fahrenheit °F = $celsius °C");
}
