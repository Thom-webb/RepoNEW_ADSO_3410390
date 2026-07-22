import 'dart:io';
import 'dart:mirrors';

void main(List<String> args) {
  //solicitar 10 numeros al usuario
  List<int> numeros = []; //declaracion vector enteros
  int num;
  //llenar todos los elementos del vector
  for (var i = 0; i < 10; i++) {
    print("digite un numero entero #${i + 1}");
    num = int.parse(stdin.readLineSync() ?? "");
    //agregar el numero al vector
    numeros.add(num);
  }
  print("*" * 40); //Imprimir 40 asteriscos
  //mostrar todos los elementos de una lista
  for (var i = 0; i < numeros.length; i++) {
    print("Elemento #${i + 1}: ${numeros[i]}");
  }
  print("*" * 40); //Imprimir 40 asteriscos
  for (var item in numeros) {
    print("elemento: $item");
  }

  //vector de multiples tipod de datos
  List<dynamic> listasDinamica = [];
  listasDinamica.add(30);
  listasDinamica.add(4.5);
  listasDinamica.add("ADSO");
  listasDinamica.add(true);
  int edad = 22;
  listasDinamica.add(edad);
  List<bool> estados = [true, false, true, false];
  print("listaDinamica"); // [30, 4.5, "ADSO", true, 22]
  if (listasDinamica[2] == "ADSO") {
    listasDinamica[3] = false;
  }
  print(listasDinamica); //[30, 4.5, "ADSO", false, 22,[]]
}
