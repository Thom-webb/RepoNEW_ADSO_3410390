/* Una empresa de software realizará el ajuste salarial anual de sus empleados basándose en su categoría (1 a 4). Solicite el salario actual del empleado y su número de categoría. En lugar de hacer el cálculo del nuevo salario directamente dentro de cada case, utilice el switch únicamente para definir el porcentaje de aumento correspondiente a esa categoría en una variable temporal (Cat 1: 15%, Cat 2: 10%, Cat 3: 8%, Cat 4: 5%). Una vez cerrado el switch, realice el cálculo matemático final e imprima el resultado. (Esto enseña el principio DRY: No repetir código). */

// DRY = DONT REPEAT YOURSELFT

import 'dart:io';

void main(List<String> args) {
  double salarioactual, nuevosalario, porcentajeaumento;
  int categoria;
  print("ingrese el salario actual del empleado ");
  salarioactual = double.parse(stdin.readLineSync() ?? "");
  print("ingrese la categoria del empleado (1,2,3,4)");
  categoria = int.parse(stdin.readLineSync() ?? "");
  porcentajeaumento = 0;
  switch (categoria) {
    case 1:
      porcentajeaumento = 0.15;
      break;
    case 2:
      porcentajeaumento = 0.10;
      break;
    case 3:
      porcentajeaumento = 0.08;
    case 4:
      porcentajeaumento = 0.05;
      break;
    default:
      porcentajeaumento = 0;
      print("categoria incorrecta");
      break;
  }
  nuevosalario = salarioactual + salarioactual * porcentajeaumento;
  print(
    "El nuevo salario del emepleado es: $nuevosalario y su categoria es: $categoria",
  );
}
