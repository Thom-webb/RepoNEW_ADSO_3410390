import 'dart:io';

void main(List<String> args) {
  /* Variables Tipo acomulador Se desea regustrar los puntos que se ganan en cada partido, teniendo en cuenta que el maximo puntaje es 10 por partido. Mostrar al final el total de puntos acumulados y el promedio de puntos */

  int puntos, puntosACUM = 0;
  double promedio;
  int totalPartidos = 15;
  for (var i = 1 ; i <= totalPartidos; i++){
    print("Cual fue el puntaje del partido $i");
    puntos = int.parse(stdin.readLineSync()!);
    puntosACUM = puntosACUM + puntos;
    //puntosACUM += puntos;
  }
  //promedio siempre fuerda del FOR
  promedio = puntosACUM/totalPartidos;

  print("el total de puntos es $puntosACUM");
  print("el promedio es $promedio");




}
