import 'dart:io';
void main(List<String> args) {
  /*2. Un propietario necesita calcular el impuesto anual de su vehículo. Las normativas
fiscales establecen que los vehículos cuyo avalúo comercial supere los
$150.000.000 (considerados de gama alta o lujo) deben pagar una tarifa del 2.5%
sobre dicho valor. Por el contrario, los vehículos con un avalúo igual o menor a este
límite pagan una tarifa del 1.5%. Solicite la marca/modelo del vehículo y su avalúo
comercial actual. Determine cuál es el porcentaje aplicado y calcule el valor total del
impuesto a pagar este año.
 */

  print("digite el modelo del vehiculo");
  String modelo = stdin.readLineSync()??"";
  print("digite la marca del vehiculo");
  String marca = stdin.readLineSync()??"";
  print("cuanto vale su carro actualmente");
  double valor_vehiculo = double.parse(stdin.readLineSync()??"");
  double impuestos = 0.015 * valor_vehiculo;
  double pagar = impuestos;

  if(valor_vehiculo > 150000000){
    impuestos = valor_vehiculo*0.025;
    pagar = impuestos;

  }
  
  print("usted debe pagar por el carro de marca $marca del modelo $modelo con un valor actual de $valor_vehiculo debe pagar un impuesto de $pagar");


}