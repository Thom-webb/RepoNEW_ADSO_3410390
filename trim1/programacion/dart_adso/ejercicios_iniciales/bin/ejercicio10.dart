//Thomas toro cuervo 
// Pedir un número al usuario y determinar si es divisible por 5. 
import 'dart:io';

void main(List<String> args) {
  //definicion de variable 
  double numero;
//entrada / proceso 
  print("ingrese su numero");
  numero = double.parse(stdin.readLineSync()!);

  if (numero % 5 == 0) {
    print("su numero es divisible por 5");
  } else {
    print("su numero no es divisible por 5");
  }
}
