import 'dart:io';

void main(List<String> args) {
  List<int> vectorA = [];
  List<int> vectorB = [];
  List<int> vectorC = [];

  for (var i = 0; i < 8; i++) {
    print("Ingrese el elemento #${i + 1} del vector B");
    int numVector1 = int.parse(stdin.readLineSync()!);
    vectorA.add(numVector1);
  }
  for (var i = 0; i < 8; i++) {
    print("Ingrese el elemento #${i + 1} del vector B");
    int numVector2 = int.parse(stdin.readLineSync()!);
    vectorB.add(numVector2);
  }

  for (var i = 0; i < 8; i++) {
    vectorC.add(vectorA[i]);
    vectorC.add(vectorA[i]);
  }

  print("Eñ resultante del vector c es $vectorC");
}
