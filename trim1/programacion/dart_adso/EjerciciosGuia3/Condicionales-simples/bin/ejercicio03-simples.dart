import 'dart:io';

void main(List<String> args) {
  /*  
  El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal. 
  */

  int precio_unitario;
  double descuento;
  int cantidad_Prendas;
  double precio_total;

  print("¿Cuántas prendas vas a ordenar?");
  cantidad_Prendas = int.parse(stdin.readLineSync()!);

  print("Digite el precio unitario de la prenda");
  precio_unitario = int.parse(stdin.readLineSync()!);

  // calcular total
  precio_total = precio_unitario.toDouble() * cantidad_Prendas;

  descuento = 0;

  // aplicar descuento
  if (cantidad_Prendas >= 3) {
    descuento = precio_total * 0.17;
    precio_total = precio_total - descuento;
  }

  print("El total a pagar es: $precio_total");
}



