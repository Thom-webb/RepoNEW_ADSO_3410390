import 'dart:io';

void main() {
  print('FRUTERÍA - MANZANAS');
  
  
  double precioKilo = 1300;
  
  
  print('¿Cuántos kilos de manzanas va a comprar?');
  double kilos = double.parse(stdin.readLineSync()!);
  
  
  double subtotal = kilos * precioKilo;
  
  
  double descuento = 0;
  int porcentaje = 0;
  
  
  if (kilos <= 2) {
    porcentaje = 0;
    descuento = 0;
    print('Sin descuento (0 a 2 kilos)');
  }
  else if (kilos <= 5) {
    porcentaje = 10;
    descuento = subtotal * 0.10;
    print('Descuento del 10% (2.01 a 5 kilos)');
  }
  else if (kilos <= 10) {
    porcentaje = 15;
    descuento = subtotal * 0.15;
    print('Descuento del 15% (5.01 a 10 kilos)');
  }
  else {
    porcentaje = 20;
    descuento = subtotal * 0.20;
    print('Descuento del 20% (10.01 kilos en adelante)');
  }
  
  
  double totalPagar = subtotal - descuento;
  
  
  print('FACTURA');
  print('Kilos comprados: ${kilos.toStringAsFixed(2)} kg');
  print('Precio por kilo: \$' + precioKilo.toStringAsFixed(0));
  print('Subtotal: \$' + subtotal.toStringAsFixed(0));
  print('Descuento ($porcentaje%): -\$' + descuento.toStringAsFixed(0));
  print('TOTAL A PAGAR: \$' + totalPagar.toStringAsFixed(0));
  
}