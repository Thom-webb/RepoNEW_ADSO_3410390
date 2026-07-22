import 'dart:io';

void main() {
  // PEDIR DATOS DE BROCHAS
  print('¿Cuántas brochas va a comprar?');
  int cantidadBrochas = int.parse(stdin.readLineSync()!);

  print('¿Cuánto cuesta cada brocha?');
  double precioBrocha = double.parse(stdin.readLineSync()!);

  // PEDIR DATOS DE RODILLOS
  print('¿Cuántos rodillos va a comprar?');
  int cantidadRodillos = int.parse(stdin.readLineSync()!);

  print('¿Cuánto cuesta cada rodillo?');
  double precioRodillo = double.parse(stdin.readLineSync()!);

  // PEDIR FORMA DE PAGO
  print('Forma de pago:');
  print('  1 = Contado (tiene 7% de descuento)');
  print('  2 = Crédito (no tiene descuento)');
  int formaPago = int.parse(stdin.readLineSync()!);

  // CALCULAR SUBTOTALES
  double subtotalBrochas = cantidadBrochas * precioBrocha;
  double subtotalRodillos = cantidadRodillos * precioRodillo;

  // APLICAR DESCUENTOS POR PRODUCTO
  double descuentoBrochas = subtotalBrochas * 0.20; // 20% de descuento
  double descuentoRodillos = subtotalRodillos * 0.15; // 15% de descuento

  double totalBrochas = subtotalBrochas - descuentoBrochas;
  double totalRodillos = subtotalRodillos - descuentoRodillos;

  double totalParcial = totalBrochas + totalRodillos;

  // APLICAR DESCUENTO POR FORMA DE PAGO
  double totalFinal = totalParcial;

  if (formaPago == 1) {
    // Si es contado, quitar otro 7%
    double descuentoContado = totalParcial * 0.07;
    totalFinal = totalParcial - descuentoContado;
    print('PAGO DE CONTADO - DESCUENTO DEL 7% APLICADO');
  } else {
    print('PAGO A CRÉDITO - SIN DESCUENTO ADICIONAL');
  }

  // MOSTRAR RESULTADOS
  print(' TOTAL A PAGAR ');
  print('Brochas: $cantidadBrochas x \$$precioBrocha = \$$subtotalBrochas');
  print('Descuento 20%: -\$$descuentoBrochas');
  print('Total brochas: \$$totalBrochas');
  print('Rodillos: $cantidadRodillos x \$$precioRodillo = \$$subtotalRodillos');
  print('Descuento 15%: -\$$descuentoRodillos');
  print('Total rodillos: \$$totalRodillos');
  print('Total parcial (con descuentos de productos): \$$totalParcial');
  if (formaPago == 1) {
    print('Descuento por pago de contado 7%: -\$${(totalParcial * 0.07)}');
  }
  print('TOTAL FINAL: \$$totalFinal');
}
