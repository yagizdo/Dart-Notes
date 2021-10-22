import 'dart:io';

import 'Rectangular.dart';

void main() {
  int edge1;
  int edge2;
  print('Please enter the long edge..');
  edge1 = int.parse(stdin.readLineSync()!);
  print('Please enter the short edge');
  edge2 = int.parse(stdin.readLineSync()!);

  var rectangular = Rectangular();

  print('Result : ${rectangular.areaCalculation(edge1, edge2).toString()}');
}
