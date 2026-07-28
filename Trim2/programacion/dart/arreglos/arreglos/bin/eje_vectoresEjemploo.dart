void main(List<String> args) {
  List<int> vectorNums = [1,2,3,4,5,6,7,8,9];
  print("Vector original $vectorNums");

  // Ordenamiento método Burbuja
  int n = vectorNums.length;
  int pasadas = 0; // Contador de pasadas

  for (var i = 0; i < n - 1; i++) {
    bool intercambio = false;
    pasadas++;

    for (var j = 0; j < n - 1 - i; j++) {

      // Comparar si el elemento actual es mayor al siguiente
      if (vectorNums[j] > vectorNums[j + 1]) {
        int temp = vectorNums[j];
        vectorNums[j] = vectorNums[j + 1];
        vectorNums[j + 1] = temp;

        intercambio = true;
      }
    }

    if (intercambio == false) {
      break;
    }
  }

  print("El vector ordenado es: $vectorNums");
  print("La cantidad de pasadas fueron $pasadas");
}



