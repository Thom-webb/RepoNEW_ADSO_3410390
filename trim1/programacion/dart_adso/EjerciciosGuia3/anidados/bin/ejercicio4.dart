import 'dart:io';

void main() {
  print('Cantidad de llantas:');
  int cantidad = int.parse(stdin.readLineSync()!);
  
  double precio;
  
  if (cantidad < 5) {
    precio = 90000;
  } else if (cantidad <= 10) {
    precio = 80000;
  } else {
    precio = 70000;
  }
  
  double total = cantidad * precio;
  
  print('\nPrecio por llanta: \$' + precio.toString());
  print('Total a pagar: \$' + total.toString());
}