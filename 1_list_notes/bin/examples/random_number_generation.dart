import 'dart:math';

void main() {
  var numbers = <int>[];
  var rnd = Random();
  for (var i = 0; i <= 100; i++) {
    int randomNumb = rnd.nextInt(51);
    numbers.add(randomNumb);
  }
  print(numbers);
  print('---------------------------------------');
  print('---------------------------------------');
  numbers.sort();
  print(numbers);
}
