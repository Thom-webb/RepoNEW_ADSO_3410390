import 'dart:io';

void main(List<String> args) {
  int edad;
  String? dia_semana;
  print("Ingrese la edad de la persona");
  edad = int.parse(stdin.readLineSync()!);
  print("Ingrese la edad dia de la semana");
  dia_semana = stdin.readLineSync();
  //condicional
  if (dia_semana == "lunes") {
    print("todos hacen el aseo");
  }
  //condicional doble
  if (edad >= 18) {
    print("usted es mayor de edad");
  } else {
    print("usted es menor de edad");
  }
}
