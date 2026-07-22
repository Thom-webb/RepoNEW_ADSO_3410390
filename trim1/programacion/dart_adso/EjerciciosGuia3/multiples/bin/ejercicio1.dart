import 'dart:io';

void main() {
  // 1. DEFINIR PRECIOS
  int precioEscoba = 3000;
  int precioRecogedor = 2000;
  int precioAromatizante = 1000;
  
  // 2. PEDIR DATOS DEL CLIENTE
  print('Ingrese el nombre del cliente:');
  String nombre = stdin.readLineSync()!;
  
  print('\n--- CATEGORÍAS DE CLIENTE ---');
  print('Categoría 1: 5% de descuento');
  print('Categoría 2: 8% de descuento');
  print('Categoría 3: 12% de descuento');
  print('Categoría 4: 15% de descuento');
  print('Ingrese el tipo de cliente (1, 2, 3 o 4):');
  int tipoCliente = int.parse(stdin.readLineSync()!);
  
  // 3. PEDIR CANTIDADES COMPRADAS
  print('\nIngrese la cantidad de escobas compradas:');
  int cantEscobas = int.parse(stdin.readLineSync()!);
  
  print('Ingrese la cantidad de recogedores comprados:');
  int cantRecogedores = int.parse(stdin.readLineSync()!);
  
  print('Ingrese la cantidad de aromatizantes comprados:');
  int cantAromatizantes = int.parse(stdin.readLineSync()!);
  
  // 4. CALCULAR SUBTOTAL
  int subtotal = (cantEscobas * precioEscoba) + 
                 (cantRecogedores * precioRecogedor) + 
                 (cantAromatizantes * precioAromatizante);
  
  // 5. CALCULAR DESCUENTO SEGÚN CATEGORÍA (CONDICIONALES MÚLTIPLES)
  double porcentajeDescuento = 0;
  
  if (tipoCliente == 1) {
    porcentajeDescuento = 0.05;  // 5%
  } else if (tipoCliente == 2) {
    porcentajeDescuento = 0.08;  // 8%
  } else if (tipoCliente == 3) {
    porcentajeDescuento = 0.12;  // 12%
  } else if (tipoCliente == 4) {
    porcentajeDescuento = 0.15;  // 15%
  } else {
    print('Categoría no válida. Sin descuento.');
    porcentajeDescuento = 0;
  }
  
  double descuento = subtotal * porcentajeDescuento;
  double total = subtotal - descuento;
  
  // 6. MOSTRAR RESULTADOS
  print('\n' + '=' * 40);
  print('FACTURA DE COMPRA');
  print('=' * 40);
  print('Cliente: $nombre');
  print('Categoría: $tipoCliente');
  print('-' * 40);
  print('DETALLE DE PRODUCTOS:');
  print('Escobas: $cantEscobas x \$${precioEscoba} = \$${cantEscobas * precioEscoba}');
  print('Recogedores: $cantRecogedores x \$${precioRecogedor} = \$${cantRecogedores * precioRecogedor}');
  print('Aromatizantes: $cantAromatizantes x \$${precioAromatizante} = \$${cantAromatizantes * precioAromatizante}');
  print('-' * 40);
  print('SUBTOTAL: \$${subtotal}');
  print('DESCUENTO (${(porcentajeDescuento * 100).toInt()}%): -\$${descuento.toStringAsFixed(0)}');
  print('-' * 40);
  print('TOTAL A PAGAR: \$${total.toStringAsFixed(0)}');
}