import 'dart:io';

void main(List<String> args) {
  /*3. Una persona quiere comprarse una moto que cuesta 2,000,000 pesos.
  Cada semana logra guardar x cantidad de dinero pesos en su alcancía.
  Utiliza un bucle while para calcular y mostrar cuántas semanas necesita
  ahorrar para alcanzar o superar la meta de su juguete. */

  double valorMoto = 2000000;
  double ahorroSemanal;
  double ahorroTotal = 0; // Vble tipo acumulador
  int contSemanas = 0;

  while (ahorroTotal < valorMoto) {
    print("Ingrese el valor ahorrado en la semana #$contSemanas");
    ahorroSemanal = double.parse(stdin.readLineSync()!);
    // el while tambien se utiliza para validacion de datos 
    
    ahorroTotal = ahorroTotal + ahorroSemanal;
    if (ahorroTotal >= valorMoto) {
      print(
        "Felicidades, has alcanzado tu meta de ahorro para comprar la moto",
      );
      contSemanas++;
    }
    
  }
  print(
    "se necesitaron $contSemanas semanas, y se ahorro en total $ahorroTotal",
  );
}
