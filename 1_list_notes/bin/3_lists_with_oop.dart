import 'Students.dart';

void main() {
  // TR : Listelerimizde objeleri de tutabiliriz. Mesela bu örnekte Students classından oluşturduğumuz nesneleri students listesinde tutuyoruz.
  // ENG : We can also keep objects in our lists. For example, in this example, we keep the objects we created from the Students class in the students list.

  var student1 = Students('Yılmaz', '9A', 543);
  var student2 = Students('Selim', '10C', 653);
  var student3 = Students('Oğuzhan', '8B', 126);
  var student4 = Students('Ahmet', '11D', 873);

  var students = <Students>[];

  students.add(student1);
  students.add(student2);
  students.add(student3);
  students.add(student4);

  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }
}
