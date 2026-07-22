import 'dart:io';

void main() {
  // 1. MOSTRAR TABLA DE ZONAS
  print('=== COSTO DE LLAMADAS INTERNACIONALES ===');
  print('Zonas disponibles:');
  print(
    'Clave 12 → América del Norte - \$200 (primeros 3 min), \$150 (minuto 4+)',
  );
  print(
    'Clave 15 → América Central - \$220 (primeros 3 min), \$180 (minuto 4+)',
  );
  print(
    'Clave 18 → América del Sur - \$450 (primeros 3 min), \$350 (minuto 4+)',
  );
  print('Clave 19 → Europa - \$350 (primeros 3 min), \$270 (minuto 4+)');
  print('Clave 23 → Asia - \$600 (primeros 3 min), \$460 (minuto 4+)');
  print('Clave 25 → África - \$600 (primeros 3 min), \$460 (minuto 4+)');
  print('Clave 29 → Oceanía - \$500 (primeros 3 min), \$390 (minuto 4+)');

  // 2. PEDIR DATOS
  print('\nIngrese la clave de la zona (12, 15, 18, 19, 23, 25 o 29):');
  int clave = int.parse(stdin.readLineSync()!);

  print('Ingrese el número de minutos hablados:');
  int minutos = int.parse(stdin.readLineSync()!);

  // 3. DETERMINAR PRECIOS SEGÚN LA CLAVE
  int precioNormal = 0; // Precio por minuto para los primeros 3 minutos
  int precioReducido = 0; // Precio por minuto a partir del minuto 4
  String zona = '';

  if (clave == 12) {
    precioNormal = 200;
    precioReducido = 150;
    zona = 'América del Norte';
  } else if (clave == 15) {
    precioNormal = 220;
    precioReducido = 180;
    zona = 'América Central';
  } else if (clave == 18) {
    precioNormal = 450;
    precioReducido = 350;
    zona = 'América del Sur';
  } else if (clave == 19) {
    precioNormal = 350;
    precioReducido = 270;
    zona = 'Europa';
  } else if (clave == 23) {
    precioNormal = 600;
    precioReducido = 460;
    zona = 'Asia';
  } else if (clave == 25) {
    precioNormal = 600;
    precioReducido = 460;
    zona = 'África';
  } else if (clave == 29) {
    precioNormal = 500;
    precioReducido = 390;
    zona = 'Oceanía';
  } else {
    print('\nERROR: Clave no válida');
    return;
  }

  // 4. CALCULAR COSTO TOTAL
  int costoTotal;

  if (minutos <= 3) {
    // Si habla 3 minutos o menos, todo al precio normal
    costoTotal = minutos * precioNormal;
  } else {
    // Si habla más de 3 minutos:
    // - Primeros 3 minutos: precio normal
    // - Minutos restantes (minutos - 3): precio reducido
    costoTotal = (3 * precioNormal) + ((minutos - 3) * precioReducido);
  }

  // 5. MOSTRAR RESULTADOS
  print('\n' + '=' * 45);
  print('FACTURA DE LLAMADA INTERNACIONAL');
  print('=' * 45);
  print('Zona: $zona');
  print('Clave: $clave');
  print('Minutos hablados: $minutos');
  print('Precio primeros 3 minutos: \$${precioNormal} / minuto');
  print('Precio a partir del minuto 4: \$${precioReducido} / minuto');
  print('-' * 45);

  // Mostrar desglose
  if (minutos <= 3) {
    print('Desglose: $minutos min × \$${precioNormal} = \$${costoTotal}');
  } else {
    print('Desglose: 3 min × \$${precioNormal} = \$${3 * precioNormal}');
    print(
      '         ${minutos - 3} min × \$${precioReducido} = \$${(minutos - 3) * precioReducido}',
    );
  }
  print('-' * 45);
  print('TOTAL A PAGAR: \$${costoTotal}');
}
