//Thomas toro cuervo 

// Un gimnasio ofrece un descuento del 20% si el cliente paga la anualidad completa (monto > 500.000), de lo contrario el descuento es del 5%. Calcular el total a pagar.
import 'dart:io';

void main(List<String> args) {
  //DEFINICION DE VARIABLES
  
  double monto = 500000.0;
  double descuento;
  double total_pagar;
//ENTRADA/PROCESO 
  print("ingrese el monto a pagar");
  monto = double.parse(stdin.readLineSync()!);

  if (monto > 500000) {
    descuento = monto * 0.20;
    total_pagar = monto - descuento;
    print("el monto a pagar con el decuento del 20% es de $total_pagar");
  } else {
    descuento = monto * 0.05;
    total_pagar = monto - descuento;
    print("el monto a pagar con el descuento del 5% es de $total_pagar");
  }
}
