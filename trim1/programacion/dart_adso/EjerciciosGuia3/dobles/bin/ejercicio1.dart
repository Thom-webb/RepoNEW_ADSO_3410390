
import 'dart:io';

void main() {
  // Declaración de variables
  int num1;
  int num2;

  // Entrada de datos
  stdout.write("Digite el primer número: ");
  num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el segundo número: ");
  num2 = int.parse(stdin.readLineSync()!);

  // Proceso y salida
  if (num1 < num2) {
    print("Orden ascendente: $num1 , $num2");
  } else if (num2 < num1) {
    print("Orden ascendente: $num2 , $num1");
  } else {
    print("Los números son iguales: $num1");
  }
}