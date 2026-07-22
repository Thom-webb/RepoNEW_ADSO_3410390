import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  /* 
    La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un descuento del 10%
  */

  //definicion variables
  double? largo;
  double? ancho;
  double? precio;
  double? metros_calculados;
  double descuento;
  print("digite el largo de su terreto");
  largo = double.parse(stdin.readLineSync()!);
  print("Ingrese el ancho de tu terreto");
  ancho = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor del metro cuadrado");
  precio = double.parse(stdin.readLineSync()!);

  descuento = 0;
  metros_calculados = largo * ancho;

  if (metros_calculados > 400) {
    descuento = precio * 0.1;
  }
  precio = precio - descuento;
  print("tu terreno es de $metros_calculados y tiene un precio de $precio ");
}
