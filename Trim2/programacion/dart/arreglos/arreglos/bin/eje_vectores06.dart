/*El CPIC desea registrar la información de N aprendices. Para cada aprendiz se debe almacenar su código de matrícula, su nota final y su porcentaje de asistencia utilizando arreglos independientes (paralelos). Desarrollar una aplicación que determine e imprima:La lista de aprendices que aprobaron (nota mayor o igual a 3.0 y asistencia mayor o igual al 80%).El código y la nota del aprendiz con el promedio más alto del grupo.
  Nota: se debe declarar un arreglo de cadenas para el código, un arreglo de reales para la nota final y un arreglo de enteros/reales para el porcentaje de asistencia. */

import 'dart:io';

void main() {
  print("Cantidad de aprendices:");
  int n = int.parse(stdin.readLineSync()!);

  List<String> codigos = List.filled(n, "");
  List<double> notas = List.filled(n, 0);
  List<double> asistencia = List.filled(n, 0);

  // Llenar los vectores
  for (int i = 0; i < n; i++) {
    print(" numero de Aprendices ${i + 1}");

    print("nombre del aprendiz:");
    codigos[i] = stdin.readLineSync()!;

    print("Nota final:");
    notas[i] = double.parse(stdin.readLineSync()!);

    print("Asistencia:");
    asistencia[i] = double.parse(stdin.readLineSync()!);
  }

  // Mostrar aprobados
  print("\nAprendices aprobados:");

  for (int i = 0; i < n; i++) {
    if (notas[i] >= 3.0 && asistencia[i] >= 80) {
      print("Código: ${codigos[i]} - Nota: ${notas[i]}");
    }
  }

  // Mostrar desaprobados
  print("\nAprendices Desaprobados:");

  for (int i = 0; i < n; i++) {
    if (notas[i] < 3.0) {
      print("Código: ${codigos[i]} - Nota: ${notas[i]}");
    }
  }

  // Buscar la nota más alta
  double mayorNota = notas[0];
  String codigoMayor = codigos[0];

  for (int i = 1; i < n; i++) {
    if (notas[i] > mayorNota) {
      mayorNota = notas[i];
      codigoMayor = codigos[i];
    }
  }
  print("------------------------------");
  print("\nAprendiz con la nota más alta:");
  print("------------------------------");

  print("Código: $codigoMayor");

  print("Nota: $mayorNota");

  print("nombre de todos los aprendices $codigos");
}
