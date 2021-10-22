import 'dart:io';

void main() {
    while (true) {
    print('Write Number..');
    int? number = int.parse(stdin.readLineSync()!);
    int? result = number % 2;

    if (result == 1) {
      print('Odd Number');
    }

    if (result == 0) {
      print('Even number');
    }

    print('If you want to exit the program (1) - Any number if you want to continue..');
    int? exitNumb = int.parse(stdin.readLineSync()!);
    if (exitNumb == 1) {
      print('And a see you again...');
      break;
    }
  }
}
