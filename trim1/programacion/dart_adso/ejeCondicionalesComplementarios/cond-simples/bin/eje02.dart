import 'dart:io';

void main(List<String> args) {
  /* Una finca de café orgánico en Supía liquida el pago diario a sus recolectores multiplicando los kilos recolectados por el precio del kilo. Si el recolector logra entregar más de 50 kg en el día y el nivel de impurezas es menor al 5%, se le otorga un bono adicional del 10% sobre su pago total. Construir un algoritmo que solicite los kilos, el porcentaje de impurezas y el precio por kilo, calculando el pago final. */

  double KilosRecolectados, precioKilo, nivelImpureza;
  double PagoBase, PagoFinal, Bono;

  print("ingrese la cantidad de Kilos recolectados");
  KilosRecolectados = double.parse(stdin.readLineSync() ?? "");
  print("ingrese el precio del Kilo");
  precioKilo = double.parse(stdin.readLineSync() ?? "");
  print("ingrese nivel de impureza");
  nivelImpureza = double.parse(stdin.readLineSync() ?? "");

  PagoBase = KilosRecolectados * precioKilo;
  PagoFinal = PagoBase;
  if (KilosRecolectados > 50 && nivelImpureza < 5) {
    Bono = PagoBase * 0.10;
    PagoFinal = PagoBase + Bono;
  }

  print(
    "para los $KilosRecolectados kilos recolectados, el pago es de $PagoFinal",
  );
}
