import 'dart:io';

void main(List<String> args) {
  /* Un concesionario está cotizando el nuevo Volkswagen Nivus 2026. Primero, el sistema pregunta el método de pago del cliente (ingrese "contado" o "credito"). a. Si el cliente paga de contado, el sistema anida una nueva condición: si el valor del vehículo supera los $110.000.000, se otorga un descuento del 5%. Si es menor o igual, se otorga un 2%. b. Si el cliente paga a crédito, el sistema anida una validación diferente: pregunta a cuántos meses es el plazo. Si el plazo es mayor a 60 meses, la tasa de interés mensual es del 1.5%. Si es de 60 meses o menos, la tasa es del 1.2%. Desarrolle el algoritmo que capture el precio base del vehículo y ejecute */

  int tipoPago;
  double ValorVehiculo, descuento, totalVehiculo;
  double ValorDescuento;

  print("Que medio de pago usaras? 1.Credito 2.Contado");
  tipoPago = int.parse(stdin.readLineSync()!);

  print("Cual es el valor del vehiculo");
  ValorVehiculo = double.parse(stdin.readLineSync()!);
  if (tipoPago == 1) {
    //credito
    if (ValorVehiculo > 110000000) {
      descuento = ValorVehiculo * 0.05;
    } else {
      descuento = ValorVehiculo * 0.02;
    }
    totalVehiculo = ValorVehiculo - descuento;
    print(
      "el vehiculo se compra de contado y su valor total es de $totalVehiculo",
    );
  } else {
    //contado
    print("de cuentos meses es el plazo");
    double plazo = double.parse(stdin.readLineSync()!);
    double cuotaMensual = double.parse(stdin.readLineSync()!);
    if (plazo > 60) {
      cuotaMensual = ValorVehiculo * 0.015;
    } else {
      cuotaMensual = ValorVehiculo * 0.012;
    }
    totalVehiculo = plazo * cuotaMensual + ValorVehiculo;
    print("El se compra a credito, con un valor mensual de $cuotaMensual");
    print("El total de vehiculo sera de $totalVehiculo");
  }
}
