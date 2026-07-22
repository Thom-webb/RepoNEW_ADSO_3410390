
  import 'dart:io';

void main(List<String> args) {
  /* Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar
clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50
000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar
será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente. */
print("cuanto es el monto que debe pagar ");
double monto = double.parse(stdin.readLineSync()??"");

double pagar_mas = 0.03;
if(monto >50000){
pagar_mas = 0.02;
}
double cuota_pagar = monto * pagar_mas ;
print("el monto que debe pagar es $cuota_pagar");
}
