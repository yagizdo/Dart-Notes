class SalaryClass {
  int calculateSalary(int days, int hours) {
    if (days * hours > 160) {
      int overtime = days * (hours * 20);

      return overtime;
    } else {
      int hoursPay = days * (hours * 10);
      return hoursPay;
    }
  }
}
