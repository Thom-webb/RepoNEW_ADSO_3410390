import 'dart:io';

void main(List<String> args) {
  int numero;
  double descuento;
  double valor_descuento;
  double precio;

  print("Ingresa tu número al azar:");
  numero = int.parse(stdin.readLineSync()!);

  print("Ingresa el valor de la compra:");
  precio = double.parse(stdin.readLineSync()!);

  descuento = 0.15;

  if (numero >= 74) {
    descuento = 0.20;
  }

  valor_descuento = precio * descuento;

  print("El total que se te descontó es $valor_descuento");
}