import 'dart:math';

void main() {
  var numbers = <int>[];
  var rnd = Random();
  for (var i = 0; i <= 100; i++) {
    numbers.add(rnd.nextInt(51));
  }
  print(numbers);
  print('---------------------------------------');
  print('---------------------------------------');
  numbers.sort();
  print(numbers);
}
