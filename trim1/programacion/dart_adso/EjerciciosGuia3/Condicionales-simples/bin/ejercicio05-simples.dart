import 'dart:io';

void main(List<String> args) {
  /* Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más. 
  */

  double valor_total;
  double valor_unitario;
  int cantidad;

  print("cuantas llantas llevaras?");
  cantidad = int.parse(stdin.readLineSync() ?? "");


  valor_unitario = 80000;

  if (cantidad >= 5) {
    valor_unitario = 70000;
  }

    valor_total = valor_unitario * cantidad;
  
  print("el valor total que tienes que pagar es de $valor_total ");
}
