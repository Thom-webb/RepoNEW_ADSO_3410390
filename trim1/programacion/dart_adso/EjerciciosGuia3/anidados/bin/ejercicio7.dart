
  /* Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los reste y si no que los sume. */

  import 'dart:io';

void main() {
  // 1. LEER LOS 2 NÚMEROS
  print('Ingrese el primer número:');
  double num1 = double.parse(stdin.readLineSync()!);
  
  print('Ingrese el segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);
  
  double resultado;
  

  if (num1 == num2) {
    resultado = num1 * num2;
    print('Los números son iguales → los MULTIPLICAMOS');
  } else {
    if (num1 > num2) {
      resultado = num1 - num2;
      print('El primero es mayor → los RESTAMOS');
    } else {
      resultado = num1 + num2;
      print('El segundo es mayor → los SUMAMOS');
    }
  }
  

  print('Resultado: $resultado');
}
