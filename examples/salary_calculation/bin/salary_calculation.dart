import 'dart:io';

import 'salaryClass.dart';

void main() {
  print('Please enter the number of days worked..');
  int days = int.parse(stdin.readLineSync()!);
  if (days > 30) {
    print('You cannot work more than 30 days in a month..');
  } else {
    print('Please enter the number of hours worked..');
    int hours = int.parse(stdin.readLineSync()!);
    if (hours > 8) {
      print('You can work up to 8 hours a day. Please enter another value..');
    } else {
      var salaryClassObj = SalaryClass();
      print('Result : ${salaryClassObj.calculateSalary(days, hours)}');
    }
  }
}
