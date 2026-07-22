//Thomas toro cuervo 

//Pedir el lado de un cubo y calcular su volumen V = lado^3.
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //definicion de variables
  double lado = 0;
  double volumen = 0;

//entrada / proceso 
  print("ingrese el lado del cubo");
  lado = double.parse(stdin.readLineSync()!);
  volumen = pow(lado, 3).toDouble();
  print("el volumen del cubo es de $volumen");
}
