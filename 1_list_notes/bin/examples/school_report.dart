import 'dart:io';

import 'LessonGrades.dart';

void main() {
  var grades = <LessonGrades>[];

  while (true) {
    print('Write a lesson name');
    String lessonName = stdin.readLineSync()!;
    print('Write a lesson grade');
    int lessonGrade = int.parse(stdin.readLineSync()!);

    var newGrades = LessonGrades(lessonName, lessonGrade);
    grades.add(newGrades);

    print('(1) to exit - Other numbers to continue.');
    int input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      int average = 0;
      int lenght = grades.length;

      print('***************************');
      for (var grade in grades) {
        print('${grade.lesson} : ${grade.grade}');
        average += grade.grade;
      }
      print('***************************');
      print('');
      var gradesAverage = (average / lenght);
      if (gradesAverage > 50) {
        print('Passed!');
      } else {
        print('Failed');
      }

      print('The program has been exited.');
      break;
    }
  }
}
