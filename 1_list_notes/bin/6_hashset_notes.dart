import 'dart:collection';

import 'Students.dart';

void main() {
  // Hashset tanımlama
  var numbers = HashSet<int>();

// Hashsete direk değerler vererek tanımlama
  var names = HashSet.from(['Yilmaz', 'Oguz', 'Selim']);

// Hashset example
  var fruits = HashSet<String>();

  fruits.add('Strawberry');
  fruits.add('Banana');
  fruits.add('Apple');
  fruits.add('Kiwi');

// Zaten hashsette banana olduğu içinr bir daha eklemez. Kendisi kontrol eder aynı değeri 2 kere eklemez.
  fruits.add('Banana');
  print(fruits);

  print(fruits.elementAt(1));

  // Listenin boyutunu verir bize
  print(fruits.length);
  // Listenin boş olup olmadığını kontrol etmek
  print(fruits.isEmpty);

  // Liste içerisinde bu değer var mı diye kontrol etme.
  print(fruits.contains('Banana'));

  // For döngüsü ile içeriği alabiliriz
  for (var f in fruits) {
    print('Fruit : $f');
  }

  // For döngüsü ile index bilgileri ve değerleri birlikte alabiliriz.
  for (var i = 0; i < fruits.length; i++) {
    print('$i index data : ${fruits.elementAt(i)}');
  }

  // Hashsetten eleman silmek
  fruits.remove('Kiwi');
  print(fruits);

  // Hashseti komple temizlemek(komple liste içeriğini silmek)
  fruits.clear();
  print(fruits);

  // Hashset OOP Örnekleri
  var s1 = Students('Ahmet', '10-F', 100);
  var s2 = Students('Selim', '12-D', 352);
  var s3 = Students('Oguz', '10-C', 453);
  var s4 = Students('Yilmaz', '10-G', 836);
  var s5 = Students('Deneme', '10-G', 100);

  var students = HashSet<Students>();

  students.add(s1);
  students.add(s2);
  students.add(s3);
  students.add(s4);
  students.add(s5);

  for (var s in students) {
    print('*****************');
    print('Student No : ${s.studentNo}');
    print('Student Name : ${s.name}');
    print('Student Class : ${s.classInfo}');
  }
}
