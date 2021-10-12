void main() {
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
}
