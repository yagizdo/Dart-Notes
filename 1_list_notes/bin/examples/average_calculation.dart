void main() {
  var numbers = <int>[];

  numbers.add(10); //0
  numbers.add(5); //1
  numbers.add(65); //2
  numbers.add(678); //3
  numbers.add(8); //4
  numbers.add(97); //5
  numbers.add(35); //6
  numbers.add(58); //7
  numbers.add(95); //8
  numbers.add(07); //9
  var length = numbers.length;
  int Total = 0;
  for (var n in numbers) {
    Total += n;
  }
  var result = (Total / length);
  print('Average : $result');
}
