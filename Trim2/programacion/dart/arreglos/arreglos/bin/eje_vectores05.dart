import 'dart:io';

void main(List<String> args) {
  List<int> vector = [];
  int contador = 0, x;

  print("Ingrese 10 numeros enteros");
  for (int i = 0; i < 10; i++) {
    stdout.write("Numeros ${i + 1}:");
    vector.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write("ingrese el numero que desea buscar: ");
  x = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < 10; i++) {
    if (vector[i] == x) {
      vector[i] = 0;
      contador++;
    }
  }

  print("cantidad de reemplazos realizados: $contador");
  print("vector modificado: $vector");
}
