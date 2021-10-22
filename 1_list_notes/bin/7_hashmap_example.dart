import 'dart:collection';

import 'Persons.dart';

void main() {
  var iller = HashMap<int, String>();

  iller[16] = 'Bursa';
  iller[34] = 'İstanbul';

  print(iller);

  print(iller.length);
  print(iller.isEmpty);

  // TR - İçerisinde bu değerler var mı diye kontrol eder
  // EN - It checks if these values ​​are in it.
  print(iller.containsKey(16));
  print(iller.containsValue('İstanbul'));

  var keys = iller.keys;

  for (var k in keys) {
    print('Result :  ${iller[k]}');
  }

  // TR - Hashmap değer silme
  // EN - Hashmap value deletion
  iller.remove(16);
  print(iller);

  // TR - Hashmap komple listeyi temizleme
  // EN - Clearing the hashmap complete list
  iller.clear();
  print(iller);

  // TR - Hashmap ve OOP
  // EN - Hashmap and OOP
  var p1 = Persons(111111, 'Yılmaz');
  var p2 = Persons(333333, 'Selim');
  var p3 = Persons(313131, 'Oguzhan');

  var persons = HashMap<int, Persons>();
  persons[p1.tcNo] = p1;
  persons[p2.tcNo] = p2;
  persons[p3.tcNo] = p3;

  var keysP = persons.keys;

  for (var k in keysP) {
    var person = persons[k];
    if (person != null) {
      print('**********');
      print('Person TC : ${person.tcNo}');
      print('Person Name : ${person.personName}');
    }
  }
}
