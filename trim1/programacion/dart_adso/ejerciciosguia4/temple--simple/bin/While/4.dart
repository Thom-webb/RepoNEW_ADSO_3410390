import 'dart:io';

void main(List<String> args) {
  int opcion;
  double num1;
  double num2;
  do {
    print("Menu calculadora");
    print("1.Suma");
    print("2.Resta");
    print("3.Multiplicacion");
    print("4.Division");
    print("5.Salir");
    print("---------------------------");
    print("Ingrese la opcion deseada");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        print("Ingrese el valor del numero 1 a sumar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del numero 2 a sumar");
        num2 double.parse(stdin.readLineSync()!);
        double suma = num1 + num2;
        print("El valor de la suma es $suma");
        break;
      case 2: { 
        print("Ingrese el valor del numero 1 a restar");
        num1 = double.parse(stdin.readLineSync()!);
        print("Ingrese el valor del numero 2 a restar");
        num2 double.parse(stdin.readLineSync()!);
        double resta;
        if(num1 >= num2){
        resta = num1 - num2;
        }
      }  
    }
  } while (opcion != 5);
}
