import 'dart:io';
import 'dart:math';

void main() {
  // 1. Pedir el valor de x
  print('Ingrese el valor de x (número entero o decimal):');
  double x = double.parse(stdin.readLineSync()!);
  
  double resultado;
  
  // 2. Calcular el residuo de x al dividir por 4
  int residuo = x.toInt() % 4;
  
  print('\n--- CÁLCULO DE f(x) ---');
  print('x = $x');
  print('Residuo de x ÷ 4 = $residuo');
  
  // 3. Aplicar la fórmula según el residuo (condicionales múltiples)
  if (residuo == 0) {
    // Caso 1: x^2
    resultado = x * x;
    print('Fórmula aplicada: x^2');
  } else if (residuo == 1) {
    // Caso 2: x / 6
    resultado = x / 6;
    print('Fórmula aplicada: x / 6');
  } else if (residuo == 2) {
    // Caso 3: raíz cuadrada de x
    if (x < 0) {
      print('Error: No se puede calcular la raíz cuadrada de un número negativo');
      return;
    }
    resultado = sqrt(x);
    print('Fórmula aplicada: √x');
  } else {
    // Caso 4: residuo == 3 → x^3 + 5
    resultado = (x * x * x) + 5;
    print('Fórmula aplicada: x^3 + 5');
  }
  
  // 4. Mostrar resultado
  print('\n--- RESULTADO ---');
  print('f($x) = ${resultado.toStringAsFixed(4)}');
}