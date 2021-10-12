import 'Students.dart';

void main() {
  var names = <String>[];
  names.add('Oğuzhan İnce'); // 0. Eleman.
  names.add('Selim Yalınkılıç'); // 1. Eleman.
  names.add('Yılmaz Yağız Dokumacı'); // 2. Eleman.

  // TR - Listeyi alfabetik olarak sıralatma.
  // ENG - Sort the list alphabetically.
  names.sort();
  print(names);

  // TR : Listelerde sıralama
  // ENG : Sorting in lists
  var student1 = Students('Yılmaz', '9A', 543);
  var student2 = Students('Selim', '10C', 653);
  var student3 = Students('Oğuzhan', '8B', 126);
  var student4 = Students('Ahmet', '11D', 873);

  var students = <Students>[];

  students.add(student1);
  students.add(student2);
  students.add(student3);
  students.add(student4);

  print('The first version');
  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }

  print('----------------------------------------------');

  Comparator<Students> sort1 = (x, y) => x.studentNo.compareTo(y.studentNo);
  students.sort(sort1);
  print('Sort from smallest to largest');
  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }

  Comparator<Students> sort2 = (y, x) => x.studentNo.compareTo(y.studentNo);
  students.sort(sort2);
  print('Sort from largest to smallest');
  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }

  print('----------------------------------------------');

  print('----------------------------------------------');
  print('Sort textual from smallest to largest.');
  Comparator<Students> sort3 = (x, y) => x.name.compareTo(y.name);
  students.sort(sort3);
  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }

  print('----------------------------------------------');
  print('Sort textual from largest to smallest.');
  Comparator<Students> sort4 = (y, x) => x.name.compareTo(y.name);
  students.sort(sort4);
  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }
}
