import 'Students.dart';

void main() {
  var student1 = Students('Yılmaz', '9A', 543);
  var student2 = Students('Selim', '10C', 653);
  var student3 = Students('Oğuzhan', '8B', 126);
  var student4 = Students('Ahmet', '11D', 873);

  var students = <Students>[];

  students.add(student1);
  students.add(student2);
  students.add(student3);
  students.add(student4);

  // TR : Listeler de filtreleme işlemleri
  // ENG : Filtering operations in lists

  // Filtering student numbers greater than 200

  // TR : Burada Iterable fonksiyonunu kullanıyoruz. Bir filter için değişken veriyoruz sonrasında kullanmak istediğimiz diziyi belirtiyoruz .where diyip parantez içerisine yine kullanmak istediğimiz bir değişken veriyoruz. Bu değişken ile dizi de ki verilere erişecek ve bir filtre belirteceğiz.
  // ENG : // TR : We are using the Iterable function here. We give a variable for a filter, then we specify the array we want to use. We say where and give a variable we want to use in the parentheses. With this variable, we will access the data in the array and specify a filter.
  Iterable<Students> filteredList = students.where((student) {
    return student.studentNo > 200;
  });

  students = filteredList.toList();
  print('Filtering student numbers greater than 200');
  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }
  //Filter only names that contain the letter h
  Iterable<Students> filteredList2 = students.where((student) {
    return student.name.contains('h');
  });

  students = filteredList2.toList();
  print('----------------------------------------------');
  print('----------------------------------------------');
  print('Filter only names that contain the letter h');
  for (var s in students) {
    print('*************************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }
}
