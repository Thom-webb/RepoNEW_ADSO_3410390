import 'dart:io';

void ejercicio1() {
  // Crear un vector de 50 elementos (todos inicializados en 0)
  List<double> valores = List.filled(50, 0.0);
  
  // Leer los 50 valores
  print('Ingrese 50 números (uno por línea):');
  for (int i = 0; i < 50; i++) {
    print('Valor ${i+1}:');
    String? input = stdin.readLineSync();
    valores[i] = double.parse(input!);
  }
  
  // Calcular suma total
  double suma = 0.0;
  for (int i = 0; i < 50; i++) {
    suma += valores[i];
  }
  double promedio = suma / 50;
  
  // Contar cuántos son mayores que el promedio y guardarlos en una lista
  List<double> mayores = [];
  for (int i = 0; i < 50; i++) {
    if (valores[i] > promedio) {
      mayores.add(valores[i]);
    }
  }
  
  // Imprimir resultados
  print('\nPromedio: $promedio');
  print('Cantidad de valores mayores que el promedio: ${mayores.length}');
  print('Valores mayores que el promedio: $mayores');
}