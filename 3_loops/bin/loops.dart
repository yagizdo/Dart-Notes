void main() {
  // TR - Örnek bir for döngüsü
  // EN - For loop example

  for (var i = 0; i < 5; i++) {
    print('i = $i');
  }
  print('***************');
  // TR - Listelerde for döngüsü bu şekilde de kullanılabiliyor.
  var exampleList = <String>['one,two,four,six,eleven,lol,jk'];

  for (var e in exampleList) {
    print(e);
  }

  // TR - While döngüsü örneği
  // EN - While loop example

  String name = 'Yilmaz Yagiz Dokumaci';
  int i = 1;
  while (i <= 10) {
    print("$i - $name");
    i++;
  }
}
