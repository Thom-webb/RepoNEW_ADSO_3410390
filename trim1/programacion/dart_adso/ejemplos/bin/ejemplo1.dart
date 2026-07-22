import 'dart:io';

void main(List<String> args) {
  //definicion variables
  double precio, descuento, total_pagar;
  int cantidad;

  //opreaciones de entrada
  stdout.writeln("Ingrese el precio del producto");
  precio = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la cantidad");
  cantidad = int.parse(stdin.readLineSync()!);
  total_pagar = precio * cantidad;
  descuento = total_pagar * 0.15;
  total_pagar = total_pagar - descuento;
  //salida
  stdout.writeln("el total a pagar es: $total_pagar ");
}
