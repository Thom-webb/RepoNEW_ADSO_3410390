/* El jefe del departamento de construcción de la constructora Pagasa, desea que se le desarrolle un programa para sus empleados, el cual calcule el sueldo de un empleado, de tal manera que el sueldo se calculará de la siguiente manera: si el número de horas trabajadas es mayor a 40, el excedente de 40 hrs. se paga al doble de la cuota por hora, en caso de no ser mayor a 40 hrs. se paga la cuota normal por hora, si las horas exceden a 50 hrs. el excedente de 50 hrs. se paga al triple de la cuota por hora. Se pedirá el nombre del empleado, el número de horas trabajadas y la cuota por hora. mostrar en pantalla el nombre del empleado, el número de horas trabajadas y su sueldo. */

import 'dart:io';

void main() {
  print('Ingrese el nombre del empleado:');
  String nombre = stdin.readLineSync()!;
  
  print('Ingrese el número de horas trabajadas:');
  int horas = int.parse(stdin.readLineSync()!);
  
  print('Ingrese la cuota por hora:');
  double cuota = double.parse(stdin.readLineSync()!);
  
  double sueldo = 0;
  
  if (horas <= 40) {
   
    sueldo = horas * cuota;
  } else if (horas <= 50) {
  
    sueldo = 40 * cuota + (horas - 40) * (cuota * 2);
  } else {
    
    sueldo = 40 * cuota + 10 * (cuota * 2) + (horas - 50) * (cuota * 3);
  }
  
  print('\n--- BOLETA DE PAGO ---');
  print('Empleado: $nombre');
  print('Horas trabajadas: $horas');
  print('Sueldo total: \$${sueldo.toStringAsFixed(2)}');
}