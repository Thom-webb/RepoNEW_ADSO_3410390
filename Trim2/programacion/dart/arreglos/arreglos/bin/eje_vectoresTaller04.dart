import 'dart:io';

void ejercicio4() {
  List<int> original = List.filled(8, 0);
  List<int> inverso = List.filled(8, 0);
  
  print('Ingrese 8 números enteros:');
  for (int i = 0; i < 8; i++) {
    print('Número ${i+1}:');
    String? input = stdin.readLineSync();
    original[i] = int.parse(input!);
  }
  
  // Llenar inverso: el primer elemento de original va al último de inverso, etc.
  for (int i = 0; i < 8; i++) {
    inverso[i] = original[7 - i];
  }
  
  print('Vector original: $original');
  print('Vector inverso: $inverso');
}