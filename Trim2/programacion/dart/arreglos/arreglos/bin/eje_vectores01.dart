void main(List<String> args) {
  List<int> numeros; //declaracion de un vector numerico
  List<int> numeros2 = []; //declaracion de un vector numerico

  //declaracion con valores iniciales
  List<int> edadesAprendices = [17, 16, 18, 20, 22, 19, 24];
  //Imprimir un ellemento del Array (arreglo)
  print(edadesAprendices[2]);

  //List<int> numeros; //declaracion de un vector numerico
  //List<int> numeros2 = []; //declaracion de un vector numerico

  //declaracion con valores iniciales
  //List<int> edadesAprendices = [17, 16, 18, 20, 22, 19, 24];
  //Imprimir un elemento del Array (arreglo)
  //print(edadesAprendices[0]);

  //vector de tipo String
  //List<String> frutas = ["Mango", "Pera", "Papaya", "Piña"];
  //print(frutas[2]); //imprime papaya
  //print(frutas[3]); //imprime Piña
  //frutas[1] = "Manzana"; //Se remplaza el elemento posicion 1
  //print(frutas); //Mango, Manzana, Papaya, Piña

  //Imprimir los elementos de un Vector
  //for (var i = 0; i < 3; i++) {
  //print(frutas[i]); //Imprimir cada elemento del vector
  //}
  //print("cantidad de frutas> ${frutas.length}"); //muestra 4
  //for (var i = 0; i <= frutas.length; i++) {}
  //print(frutas[i]); //Imprimir cada elemento del vector

  //Metodos para manipular listas - Add-Remove
  List<double> estaturas = [1.70, 1.40, 1.95, 1.30];
  estaturas.add(1.65);
  estaturas.add(1.72);
  estaturas.add(1.75);
  print("cantidad de elementos vector: ${estaturas.length}");
  estaturas.remove(2);
  print(estaturas); // [1.70, 1.40, 1.30 1.65 1,72, 1.75]
  estaturas.remove(1.30);
  print(estaturas); // [1.70, 1.40,1.65, 1,72, 1.75]
  estaturas.elementAt(4); //muestra el elemento de la posocion 4
  print(estaturas.reversed); //imprime los elementos al contrario
  print(estaturas.last); //muestra el ultimo elemento (1.75)
  print(estaturas.reversed.last); //muestra 1.7
}
