import 'dart:io';

void main(List<String> args) {
  print("consecionario vial");

  int tipoVehiculo, numEjes;
  double tarifaPeaje, total;
  print(
    "que tipo de vehiculo 1.Moto | 2.Automovil | 3.Bus | 4.camion /Tractomula",
  );
  tipoVehiculo = int.parse(stdin.readLineSync()!);

  switch (tipoVehiculo) {
    case 1: //moto
      total = 5000;
      break;

    case 2: //Auntomovil
      total = 10000;
      break;

    case 3: //BUS
      total = 15000;
      print("cual es el numero de ejes del bus");
      numEjes = int.parse(stdin.readLineSync()!);
      total = total + numEjes * 2000;

    case 4:
      tarifaPeaje = 20000;
      print("cual es el numero de ejes del camion o tractomula");
      numEjes = int.parse(stdin.readLineSync()!);
      total = tarifaPeaje + numEjes * 5000;

    default:
      total = 0;
      print("opcion no valida");
      break;
  }
  print("Opcion no valido");
}
