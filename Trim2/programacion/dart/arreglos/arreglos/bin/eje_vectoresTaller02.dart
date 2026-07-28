import 'dart:io';

void ejercicio2() {
  List<int> A = List.filled(10, 0);
  List<int> B = List.filled(10, 0);
  List<int> C = List.filled(10, 0);
  
  print('Ingrese 10 elementos para el vector A:');
  for (int i = 0; i < 10; i++) {
    print('A[$i]:');
    String? input = stdin.readLineSync();
    A[i] = int.parse(input!);
  }
  
  print('Ingrese 10 elementos para el vector B:');
  for (int i = 0; i < 10; i++) {
    print('B[$i]:');
    String? input = stdin.readLineSync();
    B[i] = int.parse(input!);
  }
  
  // Sumar elemento a elemento
  for (int i = 0; i < 10; i++) {
    C[i] = A[i] + B[i];
  }
  
  print('Vector C (suma de A y B): $C');
}