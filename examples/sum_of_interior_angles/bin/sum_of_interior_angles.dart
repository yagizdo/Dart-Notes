import 'dart:io';

import 'SumAngels.dart';

void main() {
  print("Please enter a angels number..");
  int angels = int.parse(stdin.readLineSync()!);

  var SumAngObj = SumAngels();
  print("Result : ${SumAngObj.sumAngels(angels)}");
}
