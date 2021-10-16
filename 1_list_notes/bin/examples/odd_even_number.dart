void main() {
  var numbers = <int>[];

  var oddNumbers = <int>[]; // Tek sayılar
  var evenNumbers = <int>[]; // Çift Sayılar

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

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 1) {
      oddNumbers.add(numbers[i]);
    } else {
      evenNumbers.add(numbers[i]);
    }
  }

  print('Even Numbers : $evenNumbers');
  print('----------------------------');
  print('Odd Numbers : $oddNumbers');
}
