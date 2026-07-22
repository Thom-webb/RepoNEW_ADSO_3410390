//Pedir al usuario su edad actual y mostrar cuántos años tendrá en el año 2050. 

//Thomas toro cuervo 

import 'dart:io';

void main(List<String> args) {
  //ENTRADA / PROCESO 
  print(DateTime.now().year);

  print("ingrese su edad actual");
  int edad = int.parse(stdin.readLineSync()!);

  edad = edad + (2050 - DateTime.now().year);
  print("su edad en el año 2050 será: $edad");
}
