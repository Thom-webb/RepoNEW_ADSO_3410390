import 'dart:io';

void ejercicio5() {
  List<int> X = List.filled(12, 0);
  
  print('Ingrese 12 números enteros para el vector X:');
  for (int i = 0; i < 12; i++) {
    print('X[$i]:');
    String? input = stdin.readLineSync();
    X[i] = int.parse(input!);
  }
  
  print('Ingrese el número que desea buscar:');
  String? input = stdin.readLineSync();
  int buscado = int.parse(input!);
  
  int posicion = -1; // -1 indica no encontrado
  for (int i = 0; i < 12; i++) {
    if (X[i] == buscado) {
      posicion = i;
      break; // salir del bucle porque ya lo encontramos
    }
  }
  
  if (posicion != -1) {
    print('El número $buscado se encuentra en la posición $posicion');
  } else {
    print('NO');
  }
}