import 'dart:io';

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
}
