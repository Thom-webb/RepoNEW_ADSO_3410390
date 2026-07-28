import 'dart:io';

void ejercicio6() {
  List<int> A = List.filled(7, 0);
  List<int> B = List.filled(7, 0);
  List<int> C = List.filled(7, 0);
  
  print('Ingrese 7 elementos para el vector A:');
  for (int i = 0; i < 7; i++) {
    print('A[$i]:');
    String? input = stdin.readLineSync();
    A[i] = int.parse(input!);
  }
  
  print('Ingrese 7 elementos para el vector B:');
  for (int i = 0; i < 7; i++) {
    print('B[$i]:');
    String? input = stdin.readLineSync();
    B[i] = int.parse(input!);
  }
  
  // Multiplicar: A[i] * B[6 - i]
  for (int i = 0; i < 7; i++) {
    C[i] = A[i] * B[6 - i];
  }
  
  print('Vector A: $A');
  print('Vector B: $B');
  print('Vector C (productos): $C');
}