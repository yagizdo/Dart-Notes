import 'dart:io';

import 'Students.dart';

void main() {
  var names = <String>[];
  // TR - Listeye eleman ekleme.
  // ENG - Adding an element to the list.
  names.add('Oğuzhan İnce'); // 0. Eleman.
  names.add('Selim Yalınkılıç'); // 1. Eleman.
  names.add('Yılmaz Yağız Dokumacı'); // 2. Eleman.

  print(names);

  // TR - Listenin istediğimiz indexinde ki isimi güncelleme.
  // ENG - Updating the name in the index of the list we want.
  names[1] = 'Selim İnce';
  print(names);

  // TR - Listenin istediğimiz indexine yeni değer atama, mesela 0-muz, 1-elma,2-erik diye bir liste var. Ben bu kodu kullanırsam liste 0-muz, 1-Oğuzhan Dokumacı, 2-elma, 3-erik şeklinde güncellenecek.
  // ENG - Assigning a new value to the index of the list we want, for example, there is a list called 0-banana, 1-apple,2-plum. If I use this code, the list will be updated as 0-banana, 1-Oğuzhan Dokumacı, 2-apple, 3-plum.
  names.insert(1, 'Oğuzhan Dokumacı');
  print(names);

  // TR - Listenin istediğimiz elemanını direk bu kod ile bir değişkene atayabilir ve onu yazdırabiliriz.
  // ENG - We can directly assign the element of the list we want to a variable with this code and print it.
  String isim1 = names[1];
  print(isim1);

  // TR - Listenin istediğimiz elemanını değişkene atamadan direk bu şekilde de yazdırabilir.
  // ENG - It can also print the element of the list we want without assigning it to the variable, directly like this.
  print(names[2]);

  // TR - Listenin boş olup olmadığını kontrol ediyoruz.
  // ENG - We check if the list is empty.
  print(names.isEmpty);

  // TR - Listenin boyutunu öğrenmek.
  // ENG - Find out the size of the list.
  print(names.length);

  // TR - Listenin ilk elemanını yazdırmak.
  // ENG - Printing the first element of the list.
  print(names.first);

  // TR - Listenin son elemanını yazdırmak.
  // ENG - Printing the last element of the list.
  print(names.last);

  // TR - Listenin içeriğinde bir eleman arıyoruz ve o eleman listede var ise true yok ise false döndürüyor.
  // ENG - We are looking for an element in the content of the list and it returns true if that element exists in the list, false otherwise.
  // Example 1 :
  print(names.contains('Oğuzhan İnce'));

  // Example 2 :
  print(names.contains('Kiraz'));

  // TR - Listeyi ters çevirmek.
  // ENG - Reverse the list.
  var reversedList = names.reversed;
  print(reversedList);

  // TR - Listeyi alfabetik olarak sıralatma.
  // ENG - Sort the list alphabetically.
  names.sort();
  print(names);

  // TR - Listeden bir eleman silmek.
  // ENG - Deleting an element from the list.
  names.removeAt(2);
  print(names);

  // TR - Listeden direk istediğimiz bir değeri girmek. Mesela bu örnekte liste içerisinde bu yazdığımız değerden birden fazla varsa hepsini siler. Yani 5 tane Oğuzhan İnce varsa hepsini siler. Üstte ki durumda sadece o indexi siler.
  // ENG - Entering a value we want directly from the list. For example, in this example, if there is more than one value in the list, it deletes all of them. In other words, if there are 5 Oğuzhan İnce, he will delete them all. In the above case, it only deletes that index.
  names.remove('Oğuzhan İnce');
  print(names);

  // TR - Listeyi direk temizlemek/içeriğini silmek.
  // ENG - Clearing/deleting the list directly.
  names.clear();
  print(names);

  /*
  TR : Listelerin döngüler ile kullanılması.
  ENG : Using lists with loops.
  */

  var fruits = <String>[];

  fruits.add('Apple');
  fruits.add('Banana');
  fruits.add('Cherry');
  fruits.add('Kiwi');
  fruits.add('Strawberry');

  // TR : Listede ki her elemanı tek tek f değişkenine aktarıyoruz. Ve sırayla aktardığımız değerleri yazdırıyoruz.
  // ENG : We transfer each element in the list to the variable f one by one. And we print the values ​​we transferred in order.
  for (var f in fruits) {
    print('Fruit : $f');
  }
  // TR : Eğer içeriğin yanında index numarasına da erişmek istiyorsak, Bu şekilde bir for döngüsünü kullanarak hem liste içerisinde ki değerlere hemde index numaralarına erişebiliyoruz. Döngü sınırını da direk liste uzunluğu olarak verdik böylece listede ki elemanlar artıp azaldıkça for döngüsü de kendisini buna göre çalıştıracak.
  // ENG : If we want to access the index number as well as the content, we can access both the values ​​in the list and the index numbers by using a for loop in this way. We also gave the loop limit directly as the list length, so as the elements in the list increase or decrease, the for loop will run itself accordingly.
  for (var i = 0; i < (fruits.length); i++) {
    print('Fruits in index $i : ${fruits[i]}');
  }
  print('----------------------------------------------');
  print('----------------------------------------------');
  print('----------------------------------------------');
  print('----------------------------------------------');
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
    print("*************************");
    print("Student No : ${s.studentNo}");
    print("Student Name : ${s.name}");
    print("Student Class : ${s.classInfo}");
  }
  print('----------------------------------------------');
  print('----------------------------------------------');
  // TR : Listelerde sıralama
  // ENG : Sorting in lists

  print("The first version");
  for (var s in students) {
    print("*************************");
    print("Student No : ${s.studentNo}");
    print("Student Name : ${s.name}");
    print("Student Class : ${s.classInfo}");
  }

  print('----------------------------------------------');

  Comparator<Students> sort1 = (x, y) => x.studentNo.compareTo(y.studentNo);
  students.sort(sort1);
  print('Sort from smallest to largest');
  for (var s in students) {
    print("*************************");
    print("Student No : ${s.studentNo}");
    print("Student Name : ${s.name}");
    print("Student Class : ${s.classInfo}");
  }

  Comparator<Students> sort2 = (y, x) => x.studentNo.compareTo(y.studentNo);
  students.sort(sort2);
  print('Sort from largest to smallest');
  for (var s in students) {
    print("*************************");
    print("Student No : ${s.studentNo}");
    print("Student Name : ${s.name}");
    print("Student Class : ${s.classInfo}");
  }

  print('----------------------------------------------');

  print('----------------------------------------------');
  print('Sort textual from smallest to largest.');
  Comparator<Students> sort3 = (x, y) => x.name.compareTo(y.name);
  students.sort(sort3);
  for (var s in students) {
    print("*************************");
    print("Student No : ${s.studentNo}");
    print("Student Name : ${s.name}");
    print("Student Class : ${s.classInfo}");
  }

  print('----------------------------------------------');
  print('Sort textual from largest to smallest.');
  Comparator<Students> sort4 = (y, x) => x.name.compareTo(y.name);
  students.sort(sort4);
  for (var s in students) {
    print("*************************");
    print("Student No : ${s.studentNo}");
    print("Student Name : ${s.name}");
    print("Student Class : ${s.classInfo}");
  }
}
