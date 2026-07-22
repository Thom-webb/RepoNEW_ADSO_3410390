//Thomas toro cuervo 

import 'dart:io';

void main(List<String> args) {
  //Hacer un algoritmo que lea el nombre de un conductor, la distancia recorrida (km) y el tiempo empleado (horas) para mostrar la velocidad promedio.
  
  //definicion de variables 
  String nombre;
  double distancia;
  double tiempo;
  double velocidad;
//ENTRADA / PROCESO
  print("ingrese el nombre del conductor");
  nombre = stdin.readLineSync()!;
  print("ingrese la distancia recorrida en KM");
  distancia = double.parse(stdin.readLineSync()!);
  print("ingrese el tiempo empleado en horas");
  tiempo = double.parse(stdin.readLineSync()!);
  velocidad = distancia / tiempo;
  print("la velocidad promedio del conductor $nombre es de $velocidad km/h");
}
  