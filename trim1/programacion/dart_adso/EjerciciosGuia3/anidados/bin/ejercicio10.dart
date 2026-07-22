import 'dart:io';

void main() {
  print('Ingrese la edad de la persona (en años):');
  double edad = double.parse(stdin.readLineSync()!);
  
  print('Ingrese el sexo de la persona (M para masculino / F para femenino):');
  String sexo = stdin.readLineSync()!.toUpperCase();
  
  print('Ingrese el nivel de hemoglobina (en g%):');
  double hemoglobina = double.parse(stdin.readLineSync()!);
  
  double minNormal = 0;
  double maxNormal = 0;
  String rango = '';
  
  if (edad >= 0 && edad <= 1) {
    minNormal = 13;
    maxNormal = 26;
    rango = '0 - 1 mes (13 - 26 g%)';
  } else if (edad > 1 && edad <= 6) {
    minNormal = 10;
    maxNormal = 18;
    rango = '> 1 y ≤ 6 meses (10 - 18 g%)';
  } else if (edad > 6 && edad <= 12) {
    minNormal = 11;
    maxNormal = 15;
    rango = '> 6 y ≤ 12 meses (11 - 15 g%)';
  } else if (edad > 1 && edad <= 5) {
    minNormal = 11.5;
    maxNormal = 15;
    rango = '> 1 y ≤ 5 años (11.5 - 15 g%)';
  } else if (edad > 5 && edad <= 10) {
    minNormal = 12.6;
    maxNormal = 15.5;
    rango = '> 5 y ≤ 10 años (12.6 - 15.5 g%)';
  } else if (edad > 10 && edad <= 15) {
    minNormal = 13;
    maxNormal = 15.5;
    rango = '> 10 y ≤ 15 años (13 - 15.5 g%)';
  } else if (edad > 15) {
    if (sexo == 'F') {
      minNormal = 12;
      maxNormal = 16;
      rango = 'Mujeres > 15 años (12 - 16 g%)';
    } else if (sexo == 'M') {
      minNormal = 14;
      maxNormal = 18;
      rango = 'Hombres > 15 años (14 - 18 g%)';
    } else {
      print('Sexo no válido. Use M o F');
      return;
    }
  } else {
    print('Edad no válida');
    return;
  }
  
  
  String resultado;
  
  if (hemoglobina < minNormal) {
    resultado = 'ANEMIA';
  } else if (hemoglobina >= minNormal && hemoglobina <= maxNormal) {
    resultado = 'NORMAL';
  } else {
    resultado = 'CARDIOPATÍA';
  }
  
  
  print('\n' + '=' * 50);
  print('RESULTADO DEL ANÁLISIS CLÍNICO');
  print('=' * 50);
  print('Edad: $edad años');
  print('Sexo: ${sexo == 'M' ? 'Masculino' : 'Femenino'}');
  print('Nivel de hemoglobina: $hemoglobina g%');
  print('Rango aplicado: $rango');
  print('Rango normal: $minNormal - $maxNormal g%');
  print('-' * 50);
  print('DIAGNÓSTICO: $resultado');
  
  if (resultado == 'ANEMIA') {
    print(' La persona tiene anemia (nivel bajo de hemoglobina)');
  } else if (resultado == 'NORMAL') {
    print(' La persona está normal (nivel adecuado de hemoglobina)');
  } else {
    print(' La persona tiene cardiopatía (nivel alto de hemoglobina)');
  }
}