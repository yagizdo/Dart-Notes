import 'dart:io';

import '../Students.dart';

void main() {
  var students = <Students>[];

  // For - while Kullanılarak yapılacak not olarak dursun burda.

  while (true) {
    print('Please write Student name');
    String studentName = stdin.readLineSync()!;
    print('Please write Student Number');
    int studentNumber = int.parse(stdin.readLineSync()!);
    print('Please write Student Class');
    String studentClass = stdin.readLineSync()!;

    var newStudent = Students(studentName, studentClass, studentNumber);
    students.add(newStudent);

    print('(1) to exit - Other numbers to continue.');
    int input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      print('Student lists : ');
      for (var student in students) {
        print('*******************************');
        print('Student Number : ${student.studentNo}');
        print('Student Name : ${student.name}');
        print('Student Class : ${student.classInfo}');
      }
      print('');
      print('');

      print('The program has been exited.');
      break;
    }
  }
}
