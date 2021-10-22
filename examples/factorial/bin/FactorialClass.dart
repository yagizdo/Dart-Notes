class FactorialClass {
  int fact = 1;
  void Factorial(int number) {
    for (var i = 1; i <= number; i++) {
      fact = fact * i;
    }
    print(fact);
  }
}
