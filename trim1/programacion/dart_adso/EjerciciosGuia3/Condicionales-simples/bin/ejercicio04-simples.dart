import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  /* Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves). 
  */

  String nombre;
  double precioORIGINAL;
  double precioFINAL;
  int clave;
  double descuento = 0;

  print("cual es el nombre de tu producto");
  nombre = stdin.readLineSync()!;

  print("ingrese la clave del articulo");
  clave = int.parse(stdin.readLineSync()!);

  print("cual es el precio de tu producto");
  precioORIGINAL = double.parse(stdin.readLineSync()!);

  clave = 2;

  if (clave == 2) {
    descuento = precioORIGINAL * 0.20;
  }

  precioFINAL = precioORIGINAL - descuento;

  print(
    "tu producto llamado $nombre tiene un descuento y queda en $precioFINAL",
  );
}
