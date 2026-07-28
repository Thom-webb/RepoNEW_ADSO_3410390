import 'dart:io';

void ejercicio3() {
  List<int> numeros = List.filled(15, 0);
  
  print('Ingrese 15 números enteros:');
  for (int i = 0; i < 15; i++) {
    print('Número ${i+1}:');
    String? input = stdin.readLineSync();
    numeros[i] = int.parse(input!);
  }
  
  int ceros = 0, negativos = 0, positivos = 0;
  int sumaCeros = 0, sumaNegativos = 0, sumaPositivos = 0;
  
  for (int i = 0; i < 15; i++) {
    if (numeros[i] == 0) {
      ceros++;
      sumaCeros += numeros[i];
    } else if (numeros[i] < 0) {
      negativos++;
      sumaNegativos += numeros[i];
    } else {
      positivos++;
      sumaPositivos += numeros[i];
    }
  }
  
  print('Cantidad de ceros: $ceros');
  print('Cantidad de negativos: $negativos');
  print('Cantidad de positivos: $positivos');
  print('Suma de negativos: $sumaNegativos');
  print('Suma de ceros: $sumaCeros');
  print('Suma de positivos: $sumaPositivos');
}