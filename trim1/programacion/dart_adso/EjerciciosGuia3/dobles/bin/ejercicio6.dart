import 'dart:io';

void main() {
  print('Hectáreas del bosque:');
  double ha = double.parse(stdin.readLineSync()!);
  
  double m2 = ha * 10000;  // Convertir a metros cuadrados
  
  double pPino, pRoble, pCedro;
  
  if (m2 > 1000000) {
    pPino = 70;
    pRoble = 20;
    pCedro = 10;
  } else {
    pPino = 50;
    pRoble = 30;
    pCedro = 20;
  }
  
  double m2Pino = m2 * pPino / 100;
  double m2Roble = m2 * pRoble / 100;
  double m2Cedro = m2 * pCedro / 100;
  
  double pinos = m2Pino * (8 / 10);
  double robles = m2Roble * (15 / 15);
  double cedros = m2Cedro * (10 / 18);
  
  print('Pinos: ' + pinos.toStringAsFixed(0));
  print('Robles: ' + robles.toStringAsFixed(0));
  print('Cedros: ' + cedros.toStringAsFixed(0));
}