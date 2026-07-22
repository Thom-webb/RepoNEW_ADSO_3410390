import 'dart:io';

void main(List<String> arguments) {
  /*El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del 5% si el empleado trabajó más de 40 horas. Imprimir el nombre del empleado y su sueldo. Desarrollar el algoritmo y diagrama de flujo. 
  */

print("digite su nombre ");
String? nombre = stdin.readLineSync();
print("digite cuanto le pagan por hora");
double? valor_hora  = double.parse(stdin.readLineSync()?? "");
print("digite las horas que trabajo");
double? horas_trabajadas = double.parse(stdin.readLineSync()?? "");
double? salario_neto = valor_hora * horas_trabajadas;
double? incentivo = 0;
if(horas_trabajadas>40){
  incentivo = salario_neto * 0.5;
  
}
salario_neto = salario_neto + incentivo;
print("el empleado $nombre por haber trabajado $horas_trabajadas horas con un valor de \$$valor_hora gano \$$salario_neto ");





}

