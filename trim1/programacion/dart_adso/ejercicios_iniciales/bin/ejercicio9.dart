import 'dart:io';


void main(List<String> args) {
//Thomas toro cuervo 
//Pedir el nombre de un empleado, el valor del día trabajado y el número de días laborados en el mes; mostrar el nombre y el salario mensual.
  
  //definicion de varibales 
  String nombre;
  double valor_dia;
  int dias_trabajados;
//entrada proceso 
  print("ingresa tu nombre");
  nombre = stdin.readLineSync()!;
  print("ingrese el valor de las horas trabajadas");
  valor_dia = double.parse(stdin.readLineSync()!);
  print("ingrese la cantidad de dias trabajados");
  dias_trabajados = int.parse(stdin.readLineSync()!); 

  print("señor@ $nombre su salario del mes corresponde  a ${valor_dia * dias_trabajados}");
}
