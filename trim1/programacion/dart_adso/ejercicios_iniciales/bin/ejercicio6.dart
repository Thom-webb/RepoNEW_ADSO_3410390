//Thomas toro cuervo 

// Pedir el precio de un producto y mostrar el valor del IVA (19%) y el precio total con impuesto.

import 'dart:io';

void main(List<String> args) {
  //definicion de variables 
  double precio;
  double IVA = 0.19;
  double precio_total;
//proceso 
  print("ingrese el el precio del producto");
  precio = double.parse(stdin.readLineSync()!);
  precio_total = precio + (precio * IVA);
//salida
  print(
    "el precio del producto sin IVA es de $precio y con el IVA aplicado es de $precio_total",
  );
}
