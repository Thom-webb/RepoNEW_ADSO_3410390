//Thomas toro cuervo

// Pedir tres números al usuario y mostrar cuál es el menor de los tres.
import 'dart:io';

void main(List<String> args) {
  //definicion de variables
  double Num1;
  double Num2;
  double Num3;
  //ENTRADA / PROCESO
  print("ingrese los tres numeros");

  Num1 = double.parse(stdin.readLineSync()!);
  Num2 = double.parse(stdin.readLineSync()!);
  Num3 = double.parse(stdin.readLineSync()!);

  if (Num1 < Num2 && Num1 < Num3) {
    print("el numero menor es $Num1");
  } else {
    if (Num2 < Num1 && Num2 < Num3) {
      print("el numero menor es $Num2");
    } else {
      print("el numero menor es $Num3");
    }
  }
}
