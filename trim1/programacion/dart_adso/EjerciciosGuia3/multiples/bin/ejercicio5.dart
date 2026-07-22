import 'dart:io';

void main() {
  // 1. MOSTRAR TABLA DE ZONAS
  print('=== COSTO DE LLAMADAS INTERNACIONALES ===');
  print('Zonas disponibles:');
  print('Clave 12 → América del Norte - \$200 por minuto');
  print('Clave 15 → América Central - \$220 por minuto');
  print('Clave 18 → América del Sur - \$450 por minuto');
  print('Clave 19 → Europa - \$350 por minuto');
  print('Clave 23 → Asia - \$600 por minuto');
  print('Clave 25 → África - \$600 por minuto');
  print('Clave 29 → Oceanía - \$500 por minuto');
  
  // 2. PEDIR DATOS
  print('\nIngrese la clave de la zona (12, 15, 18, 19, 23, 25 o 29):');
  int clave = int.parse(stdin.readLineSync()!);
  
  print('Ingrese el número de minutos hablados:');
  int minutos = int.parse(stdin.readLineSync()!);
  
  // 3. DETERMINAR EL PRECIO POR MINUTO SEGÚN LA CLAVE (CONDICIONALES MÚLTIPLES)
  int precioPorMinuto = 0;
  String zona = '';
  
  if (clave == 12) {
    precioPorMinuto = 200;
    zona = 'América del Norte';
  } else if (clave == 15) {
    precioPorMinuto = 220;
    zona = 'América Central';
  } else if (clave == 18) {
    precioPorMinuto = 450;
    zona = 'América del Sur';
  } else if (clave == 19) {
    precioPorMinuto = 350;
    zona = 'Europa';
  } else if (clave == 23) {
    precioPorMinuto = 600;
    zona = 'Asia';
  } else if (clave == 25) {
    precioPorMinuto = 600;
    zona = 'África';
  } else if (clave == 29) {
    precioPorMinuto = 500;
    zona = 'Oceanía';
  } else {
    print('\nERROR: Clave no válida. Debe ser 12, 15, 18, 19, 23, 25 o 29.');
    return; // Termina el programa
  }
  
  // 4. CALCULAR COSTO TOTAL
  int costoTotal = precioPorMinuto * minutos;
  
  // 5. MOSTRAR RESULTADOS
  print('\n' + '=' * 40);
  print('FACTURA DE LLAMADA INTERNACIONAL');
  print('=' * 40);
  print('Zona: $zona');
  print('Clave: $clave');
  print('Minutos hablados: $minutos');
  print('Precio por minuto: \$${precioPorMinuto}');
  print('-' * 40);
  print('COSTO TOTAL: \$${costoTotal}');
}