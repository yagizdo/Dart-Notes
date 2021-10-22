import 'dart:io';

void main() {
  print('Write one word');
  String input = stdin.readLineSync()!;

// TR - Eğer alt alta değil yan yana yazdırmak istersen bir değişken tanımlıyoruz.
// EN - If you want to print side by side instead of one after the other, we define a variable.
  String reversedWorld = "";

  for (var i = input.length - 1; i > -1; i--) {
    // TR - Direk print ile de yazdırabiliriz bu sefer de alt alta yazar.
    // EN - We can print directly with print, this time it will print one after the other.
    print(input[i]);

    // TR - Sonra tanımladığımız değişkene her indexi eklediğimizde yan yana tersten yazdırmış oluyoruz.
    // EN - Then, when we add each index to the variable we defined, we print them side by side in reverse.
    reversedWorld = reversedWorld + input[i];
  }
  print(reversedWorld);
}
