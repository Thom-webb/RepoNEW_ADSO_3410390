import 'dart:io';

void main(List<String> args) {
  /* Una academia de música cobra $35.000 por clase individual. Si un estudiante inscribe entre 4 y 7 clases para el mes, recibe un 10% de descuento sobre el subtotal. Si inscribe 8 o más clases, se le mostrará un mensaje que tiene derecho a 2 boletas para un concierto. Solicite la cantidad de clases, calcule el subtotal y utilice condicionales para aplicar el descuento si corresponde. Muestre el total a pagar. */

  print("ingrese cuantas clases vas a inscribir");
  int Clase_unitaria = int.parse(stdin.readLineSync() ?? "");

  double sub_Total = double.parse(stdin.readLineSync() ?? "");
  double totalPagar = double.parse(stdin.readLineSync() ?? "");

  Clase_unitaria = 35000;
  sub_Total = sub_Total * Clase_unitaria;

  if (Clase_unitaria >= 4) {
    totalPagar = sub_Total + (sub_Total * 0.10);
  } else if (Clase_unitaria >= 8) {
    print("tienes derecho a 2 boletas");
  }

  print(
    "vas a inscribir este numero de $Clase_unitaria el subtotal que debes pagar es $sub_Total y tu total a pagar es $totalPagar ",
  );
}
