//Thomas toro cuervo 

//Pedir una calificación alfabética (A, B, C, D) y mostrar su equivalente numérico o descripción: A (Excelente), B (Bueno), C (Regular), D (Deficiente).

import 'dart:io';

void main(List<String> args) {
  //definicion de variables
  String exelente = "A";
  String bueno = "B";
  String regular = "C";
  String deficiente = "D";
 //entrada / proceso 
  print("ingresa tu calificacion alfabetica (A,B,C,D)");

  String? entrada = stdin.readLineSync();

  if (entrada == exelente) {
    print("tu calificacion es exelente");
  } else {
    if (entrada == bueno) {
      print("tu califcacion es Buena");
    } else {
      if (entrada == regular) {
        print("tu calificacion es regular");
      } else {
        if (entrada == deficiente)
        print("tu calificaion es deficiente");
        } 
      }
    }
  }

