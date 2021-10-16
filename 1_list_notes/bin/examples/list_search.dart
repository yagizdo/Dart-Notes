import 'dart:io';

void main() {
  /*var names = <String>[
    'Oğuzhan İnce', // 0. Eleman.
    'Selim Yalınkılıç', // 1. Eleman.
    'Yılmaz Yağız Dokumacı', // 2. Eleman.
    'Ahmet Memiş', //3. Eleman.
    'Recaizade Mahmut Ekrem' //4. Eleman.
  ];*/
  var names = <String>[];
  names.add('Oğuzhan İnce'); // 0. Eleman.
  names.add('Selim Yalınkılıç'); // 1. Eleman.
  names.add('Yılmaz Yağız Dokumacı'); // 2. Eleman.

  print(names);

  print('Please write a name..');
  late String input = stdin.readLineSync()!;
  for (var n in names) {
    if (n == input) {
      print('Name available');
      break;
    }
  }
}
