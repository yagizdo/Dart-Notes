import 'dart:io';

import 'Address.dart';
import 'Employee.dart';

void main() {
  var employees = <Employee>[];

  for (var i = 1; i < 4; i++) {
    print('Write a Employee name');
    String name = stdin.readLineSync()!;

    print('Write a Employee address(il)');
    String il = stdin.readLineSync()!;

    print('Write a Employee address(ilçe)');
    String ilce = stdin.readLineSync()!;

    var address = Address(il, ilce);
    var employee = Employee(i, name, address);

    employees.add(employee);
  }

  for (var e in employees) {
    print('********************');
    print('Employee No : ${e.no}');
    print('Employee No : ${e.name}');
    print('Employee Address(il) : ${e.address.il}');
    print('Employee Address(ilçe) : ${e.address.ilce}');
  }
}
