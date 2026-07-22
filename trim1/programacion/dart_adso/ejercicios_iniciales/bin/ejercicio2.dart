//Thomas toro cuervo 
//Crear un algoritmo que pida al usuario el nombre de una ciudad y su temperatura actual en grados Celsius, y luego los muestre. 
import 'dart:io';

void main(List<String> args) {
  //definicion de varibles
  String nombre;
  double temperatura;
//ENTRADA/ PROCESO
  print("ingrese nombre de la ciudad");
  nombre = stdin.readLineSync()!;
  print("ingrese la temperatura de la ciudad");
  temperatura = double.parse(stdin.readLineSync()!);
  print("la ciudad de nombre $nombre tiene una temperatura de $temperatura celsius");
}
