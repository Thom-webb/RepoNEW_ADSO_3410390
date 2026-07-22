import 'dart:io';
import 'dart:math';

void main() {
  // Entrada de datos
  print('Ingrese el valor de v (número entero):');
  int v = int.parse(stdin.readLineSync()!);

  print('Ingrese el valor de num (número entero):');
  int num = int.parse(stdin.readLineSync()!);

  double resultado;

  // Condicionales múltiples
  if (num == 1) {
    resultado = v * 100;
    print('Opción: 100 * v');
  } else if (num == 2) {
    resultado = pow(100, v).toDouble();
    print('Opción: 100^v');
  } else if (num == 3) {
    if (v == 0) {
      print('Error: No se puede dividir por cero.');
      return;
    }
    resultado = 100 / v;
    print('Opción: 100 / v');
  } else {
    resultado = 0;
    print('Opción: Cualquier otro número → resultado 0');
  }

  // Mostrar resultado
  print('\nResultado: $resultado');
}