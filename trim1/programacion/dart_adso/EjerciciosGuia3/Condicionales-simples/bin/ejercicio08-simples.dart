import 'dart:io';

void main(List<String> arguments) {
    /* 8. Dada la duración en minutos de una llamada calcular el costo, considerando: • Hasta tres minutos el costo es 600 • Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros. */

  //DEFINICION variables 
  int minutos;
  double costoLlamada = 600;
  double minutosAdicionales;

  //ENTRADA
  print("Ingrese la duración de la llamada en minutos");
  minutos = int.parse(stdin.readLineSync()??"");

  //PROCESO
  costoLlamada = 600;
  if(minutos > 3) {
    minutosAdicionales = (minutos - 3).toDouble();

    costoLlamada = 600 + (minutosAdicionales * 150);
  }

  //SALIDA
  print("El costo total de la llamada es: \$$costoLlamada");
}