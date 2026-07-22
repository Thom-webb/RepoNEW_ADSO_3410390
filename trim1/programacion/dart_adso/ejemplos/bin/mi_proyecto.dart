import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  print('entradas de acero');

  //definicion de una variable tipo cadena
  String programa_formacion = 'analisis y desarrollo de software';
  //Definicion variable tipo entero
  int cant_aprendices = 28;

  //definicion variable tipo real
  double promedio_notas_grupo = 3.7;

  //definicion varible logica o booleana
  bool esta_activo = true; //true o false

  // definicion constantes. se asigna en tiempo de compilacion
  const PI = 3.1416;

  //definicion de constanstes que se asignan en tiempo de ejecucion
  final FechaActual = DateTime.now();

  print(programa_formacion); //Imprime valor de la variable
  print(FechaActual);
  print('----------------'); //Imprime texto
  print('programa de formacion: $programa_formacion');
  print('cantidad aprendices: $cant_aprendices');
  print('promedio grupo: $promedio_notas_grupo');
  print('esta activo: $esta_activo');
  print('PI: $pi y la fecha actual es: $FechaActual');

  //operaciones de LEER(optener datos usuario) y ESCRIBIR (mostrar en pantalla)
  String? Nombre; //variable que permite nulos
  int? edad;
  double peso;
  stdout.writeln("Bienvenid@ a nuestra App");
  stdout.writeln("Ingrese su nombre");
  Nombre = stdin.readLineSync();
  stdout.writeln("Ingrese su edad");
  edad = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese su peso");
  peso = double.parse(stdin.readLineSync()!);
  stdout.writeln("su nombre es $Nombre, tiene $edad años y un peso $peso");
}
