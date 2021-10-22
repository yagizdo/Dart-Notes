import 'dart:io';

import 'FactorialClass.dart';

void main() {
  int number;
  print("Please write a number..");
  number = int.parse(stdin.readLineSync()!);
  var factorialObject = FactorialClass();
 factorialObject.Factorial(number);
}
