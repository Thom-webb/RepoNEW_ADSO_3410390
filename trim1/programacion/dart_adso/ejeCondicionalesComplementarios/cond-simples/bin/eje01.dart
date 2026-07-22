import 'dart:io';

void main(List<String> args) {
  /* En el centro de formación CPIC, se requiere calcular el auxilio de transporte para los aprendices del programa ADSO. El auxilio base se calcula internamente multiplicando los días de asistencia en el mes por una tarifa fija de $5.000 diarios. Solicite al usuario el nombre del aprendiz, su municipio de residencia y los días que asistió al centro. Si el aprendiz vive fuera de "Manizales" (por ejemplo, en Villamaría o Neira), se le otorga un subsidio extra del 15% sobre el auxilio base para cubrir la distancia. Imprimir el nombre del aprendiz, el auxilio base calculado y el total a recibir. */

  print("cuantos dias asistes al mes?");
  int asistencia = int.parse(stdin.readLineSync() ?? "");

  print("cual es tu nombre?");
  String? nombre = stdin.readLineSync();

  print("cual es tu municipio de residencia?");
  String? municipio = stdin.readLineSync()!.trim().toLowerCase();

  double porcentaje_ayuda = double.parse(stdin.readLineSync() ?? "");

  int asistencia_base = int.parse(stdin.readLineSync() ?? "");

  if (municipio == "Villamaria" || municipio == "Neira") {
    asistencia = asistencia * 5000;
    porcentaje_ayuda = asistencia * 0.15;
    print(
      "hola $nombre tu vives en  $municipio y tienes una ayuda del 15% y queda en $porcentaje_ayuda",
    );
  } else {
    asistencia = asistencia * 5000;
    print("Hola $nombre vives en manizales tu pago es $asistencia_base");
  }
  
}
