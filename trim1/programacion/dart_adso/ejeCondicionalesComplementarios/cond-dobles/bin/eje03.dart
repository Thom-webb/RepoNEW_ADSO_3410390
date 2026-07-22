import 'dart:io';

void main(List<String> args) {
  /*3. El área de Bienestar al Aprendiz del SENA ha actualizado las políticas para el servicio
de restaurante. Para recibir el almuerzo subsidiado por un valor de $2.000, el
aprendiz debe cumplir simultáneamente con los siguientes requisitos: pertenecer al
estrato 1 o al estrato 2, Y tener cero (0) faltas disciplinarias registradas en el sistema.
Si el aprendiz no cumple con todas estas condiciones, debe cancelar la tarifa regular
de $6.000. Solicite al usuario su nombre, su estrato y la cantidad de faltas
disciplinarias. Utilice un condicional doble con operadores lógicos para determinar
el valor a pagar.
 */
  print("que estrato es usted");
  int estrato = int.parse(stdin.readLineSync() ?? "");
  print("cuantas faltas tiene usted ");
  int faltas = int.parse(stdin.readLineSync() ?? "");
  double tarifa = 6000;

  if (estrato <= 2 && faltas == 0) {
    tarifa = 2000;
  }
  print("la tarifa de almuero es $tarifa");
}
