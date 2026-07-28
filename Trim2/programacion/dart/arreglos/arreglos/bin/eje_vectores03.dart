import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  /* Eje:
  Se requiere guardar 20 numeros en un vector ingresados por el usuario. se debe decir cuantos numeros pares hay y cuantos impares, se debe mostrar el producto de los pares y el promedio de los impares */

  List<int> numeros = [];
  int contPares = 0, contImpares = 0;
  int productoPares = 1, sumaImpares;
  double promedioImpares;
  int num;
  for (var i = 0; i < 20; i++) {
    print("Ingrese el numero #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }

  //Procesamiento

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) {
      // validacion par
      contPares++;
      productoPares = productoPares * numeros[i]; //productos pares
    } else {
      //numeros impares}
      contImpares++; //Contador Impares
      sumaImpares = sumaImpares + numeros[i];
    }
  }
}
