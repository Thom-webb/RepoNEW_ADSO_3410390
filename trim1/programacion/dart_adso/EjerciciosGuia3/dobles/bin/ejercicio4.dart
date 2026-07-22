import 'dart:io';

void main() {
  // Entrada de datos
  print('Valor de la casa:');
  double casa = double.parse(stdin.readLineSync()!);
  
  print('Ingresos del comprador:');
  double ingreso = double.parse(stdin.readLineSync()!);
  
  // Variables
  double inicial;
  int plazo;
  
  // Condición
  if (ingreso >= 800000) {
    inicial = casa * 0.15;
    plazo = 10;
  } else {
    inicial = casa * 0.30;
    plazo = 7;
  }
  
  // Cálculos
  double saldo = casa - inicial;
  int meses = plazo * 12;
  double mensual = saldo / meses;
  
  // Resultados
  print('\nCuota inicial: $inicial');
  print('Pago mensual: $mensual');
  print('Plazo: $plazo años');
}