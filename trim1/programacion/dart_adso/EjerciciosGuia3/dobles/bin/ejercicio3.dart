import 'dart:io';

void main() {
  // Entrada de datos
  print('Ingrese el precio de la camisa:');
  double precio = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  print('Ingrese la cantidad de camisas:');
  int cantidad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  
  // Cálculos
  double subtotal = precio * cantidad;
  double descuento;
  double total;
  
  if (cantidad >= 3) {
    descuento = subtotal * 0.20;  // 20% de descuento
    total = subtotal - descuento;
    print('\n--- DESCUENTO DEL 20% APLICADO ---');
  } else {
    descuento = subtotal * 0.10;  // 10% de descuento
    total = subtotal - descuento;
    print('DESCUENTO DEL 10% APLICADO');
  }
  
  // Resultados
  print('Subtotal: \$${subtotal.toStringAsFixed(2)}');
  print('Descuento: \$${descuento.toStringAsFixed(2)}');
  print('Total a pagar: \$${total.toStringAsFixed(2)}');
}