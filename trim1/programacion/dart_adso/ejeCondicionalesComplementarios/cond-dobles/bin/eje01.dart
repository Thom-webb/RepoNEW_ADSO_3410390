import 'dart:io';

void main(List<String> arguments) {
  /*1. En una finca de café orgánico se está planificando la fertilización de los cafetos
utilizando Silicorrector. La dosis depende directamente del nivel de acidez del suelo
(pH). Solicite al usuario la cantidad de árboles a fertilizar y el nivel de pH del suelo. Si
el pH es menor a 5.5 (suelo ácido), se requiere una "Dosis de choque" de 200 gramos
por árbol. Si el pH es 5.5 o mayor, el suelo está balanceado y solo requiere una "Dosis
de mantenimiento" de 50 gramos por árbol. Calcule y muestre la cantidad total de
abono (en gramos y kilogramos) que se debe preparar para el lote.
 */
print("cuantos arboles va a fertilizar");
int cant_arboles = int.parse(stdin.readLineSync()??"");

print("cual es el ph del suelo");
double nivel_PH = double.parse(stdin.readLineSync()??"");


double abono = 0;
double total_abono = cant_arboles * abono;
if(nivel_PH < 5.5){
  abono = 200;
  total_abono = cant_arboles * abono;
}
else{
  abono = 50;
  total_abono = cant_arboles * abono;
}
print("los arboles que va a abonar son $cant_arboles se va a usar $total_abono de abono");
}