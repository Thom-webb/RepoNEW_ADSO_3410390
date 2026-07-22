//Thomas toro cuervo 

//Un trabajador cobra $20.000 por hora. Si trabaja más de 48 horas, las horas adicionales se pagan como "Horas Extra" con un recargo de $5.000 sobre el valor normal. Calcular su salario total.

import 'dart:io';

void main(List<String> args) {
  //dafinicion de variables 
  double Horas_trabajadas;
  double valor_hora = 20000.0;
  double horas_extra = 5000.0;
  double horas_recargo;
  double horas_sin_recargo;


//entrada / proceso 
  print("ingrese cuantas horas trabajo");
  Horas_trabajadas = double.parse(stdin.readLineSync()!);



  if (Horas_trabajadas >= 48) {
  horas_recargo = (valor_hora * Horas_trabajadas + horas_extra);
    print(
      "trabajaste mas de 48 horas tienes horas extras para reclamar tu total de pago es $horas_recargo",
    );
  } else {
  horas_sin_recargo = (valor_hora * Horas_trabajadas);
    if (Horas_trabajadas < 48) {
      print("trabajaste menos de 48 horas tu pago total es $horas_sin_recargo");
    }
  }
}
