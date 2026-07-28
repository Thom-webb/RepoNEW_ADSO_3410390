void main(List<String> args) {
  List<int> vector;
  List<List<int>> matrizNum = [];

  //Inicializacion de matriz con valores
  for (var i = 0; i < 3; i++) {
    matrizNum.add([]);
    for (var j = 0; j < 5; j++) {
      matrizNum[i].add(0);
    }
  }
  print("Matriz 3x5>$matrizNum");
  matrizNum[1][2] = 4;
  //Se recorere la matriz para imrpimirla
  for (var element in matrizNum) {
    print(element);
  }
  matrizNum[0][4] = 8;
  print("Matriz 3x5>$matrizNum");
  for (var element in matrizNum) {
    print(element);
  }

  //Matriz con datos iniciales
  List<List<int>> matrizNum2 = [
    [5, 4, 8, 6, 1],
    [7, 2, 10, 3, 9],
    [8, 7, 2, 12, 7],
  ];
  matrizNum2[1][2] = 3;
  print("Matriz 2 - 3x5 con cambio>");
  for (var element in matrizNum2) {
    print(element);
  }
  print(matrizNum2[2][4]); //Imprime: 7
  print(matrizNum2[0][0]); //IMPRIME: 5
  
}
