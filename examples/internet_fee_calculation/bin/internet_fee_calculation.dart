import 'dart:io';

import 'FeeCalculation.dart';

void main() {
  print('Please enter the quota you used..');
  int quota = int.parse(stdin.readLineSync()!);

  var feeCalcObj = FeeCalculation();
  print('Fee : ${feeCalcObj.calculateFee(quota)}');
}
