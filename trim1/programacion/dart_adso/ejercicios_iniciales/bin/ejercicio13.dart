import 'dart:io';

void main(List<String> args) {
  //Thomas toro cuervo
  //Hacer un algoritmo que lea la temperatura de un paciente; si es mayor a 38 grados, mostrar "Tiene fiebre", de lo contrario "Temperatura normal".

  //DEFINICION DE VARIABLES 
  double temperatura;
//ENTRADA / PROCESO 
  print("ingresa la temepratura del paciente");
  temperatura = double.parse(stdin.readLineSync()!);

  if (temperatura > 38) {
    print("el paciente tiene fiebre");
  } else {
    print("el paciente tiene una temperatura normal");
  }
}
