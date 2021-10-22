import 'dart:io';

import 'FindLetter.dart';

void main() {
  print("Please enter a word..");
  String word = stdin.readLineSync()!;
  print("Please enter a letter..");
  String letter = stdin.readLineSync()!;

  var FindClassObj = FindLetter();
  FindClassObj.letters(word, letter);
}
