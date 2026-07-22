import 'dart:io';

void main(List<String> args) {
  //Thomas toro cuervo 
  
  //Pedir dos números y mostrar el resultado de restarle el menor al mayor.
//definicion de procesos 
  int Num1;
  int Num2;
//entrada / proceso 
  print("ingrese el primer numero");
  Num1 = int.parse(stdin.readLineSync()!);
  print("ingrese su segundo numero");
  Num2 = int.parse(stdin.readLineSync()!);

  if (Num1 < Num2){
    print("el resultado de tus numeros es ${Num2 - Num1}");
  }else{
    print("el resultado de tus numeros es ${Num1 - Num2}");
  }
  
  } 