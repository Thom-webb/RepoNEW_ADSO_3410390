import 'dart:io';

void main() {
  print('Cantidad de computadoras:');
  int cantidad = int.parse(stdin.readLineSync()!);
  
  double subtotal = cantidad * 1100000;
  double descuento;
  
  if (cantidad < 5) {
    descuento = subtotal * 0.10;
  } else if (cantidad < 10) {
    descuento = subtotal * 0.20;
  } else {
    descuento = subtotal * 0.40;
  }
  
  double total = subtotal - descuento;
  
  print('Subtotal: \$' + subtotal.toString());
  print('Descuento: -\$' + descuento.toString());
  print('Total: \$' + total.toString());
}