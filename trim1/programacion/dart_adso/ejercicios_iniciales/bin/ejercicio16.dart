//Thomas toro cuervo

// Leer el número de un mes (1 a 4) y mostrar la estación del año correspondiente (ejemplo: 1-Verano, 2-Otoño, etc.).

import 'dart:io';

void main(List<String> args) {
  //definiccion variables
  int mes;
  //entrada proceso
  print("ingrese el numero del mes");
  mes = int.parse(stdin.readLineSync()!);

  while (mes < 1 || mes >= 5) {
    if (mes >= 5 || mes < 1) {
      print("Digite un mes correcto");
      print("ingrese el numero del mes");
      mes = int.parse(stdin.readLineSync()!);
    }
  }

  if (mes == 1) {
    print("mes de verano");
  } else {
    if (mes == 2) {
      print("mes de otoño");
    } else {
      if (mes == 3) {
        print("mes de invierno");
      } else {
        if (mes == 4) {
          print("mes de primavera");
        }
      }
    }
  }
}
