import 'dart:io';

void main() {
  // 1. DEFINIR PRECIOS POR HECTÁREA SEGÚN TIPO
  int precioPorHectarea = 0;
  
  // 2. PEDIR DATOS DEL GRANJERO
  print('Ingrese el nombre del granjero:');
  String nombre = stdin.readLineSync()!;
  
  print('\n--- TIPOS DE FUMIGACIÓN ---');
  print('Tipo 1: Malas hierbas - \$50000 por hectárea');
  print('Tipo 2: Moscas y mosquitos - \$70000 por hectárea');
  print('Tipo 3: Gusanos - \$80000 por hectárea');
  print('Tipo 4: Todo lo anterior - \$190000 por hectárea');
  print('Ingrese el tipo de fumigación (1, 2, 3 o 4):');
  int tipo = int.parse(stdin.readLineSync()!);
  
  print('Ingrese el número de hectáreas a fumigar:');
  double hectareas = double.parse(stdin.readLineSync()!);
  
  // 3. DETERMINAR PRECIO POR HECTÁREA SEGÚN TIPO (CONDICIONALES MÚLTIPLES)
  if (tipo == 1) {
    precioPorHectarea = 50000;
  } else if (tipo == 2) {
    precioPorHectarea = 70000;
  } else if (tipo == 3) {
    precioPorHectarea = 80000;
  } else if (tipo == 4) {
    precioPorHectarea = 190000;
  } else {
    print('Tipo de fumigación no válido');
    return;
  }
  
  // 4. CALCULAR SUBTOTAL
  double subtotal = precioPorHectarea * hectareas;
  
  // 5. APLICAR DESCUENTOS EN ORDEN
  double total = subtotal;
  
  // PRIMER DESCUENTO: por superficie (>100 hectáreas) = 5%
  if (hectareas > 100) {
    double descuentoSuperficie = total * 0.05;
    total = total - descuentoSuperficie;
    print('\n✓ Descuento por superficie (>100 hectáreas): 5% = -\$${descuentoSuperficie.toStringAsFixed(0)}');
  }
  
  // SEGUNDO DESCUENTO: por exceder $1,000,000 = 10% sobre lo que sobrepase
  if (total > 1000000) {
    double excedente = total - 1000000;
    double descuentoExcedente = excedente * 0.10;
    total = total - descuentoExcedente;
    print('✓ Descuento por exceder \$1,000,000: 10% sobre el excedente = -\$${descuentoExcedente.toStringAsFixed(0)}');
  }
  
  // 6. MOSTRAR RESULTADOS
  print('\n' + '=' * 45);
  print('FACTURA DE FUMIGACIÓN');
  print('=' * 45);
  print('Granjero: $nombre');
  print('Tipo de fumigación: $tipo');
  print('Hectáreas: $hectareas');
  print('Precio por hectárea: \$${precioPorHectarea}');
  print('Subtotal: \$${subtotal.toStringAsFixed(0)}');
  print('-' * 45);
  print('TOTAL A PAGAR: \$${total.toStringAsFixed(0)}');
}