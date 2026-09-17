import 'dart:async';
import 'dart:io';

class vehiculo {
  //atributos
  String _marca;
  String _color;
  int _velocidad;
  double tamanio;
  //constructor
  vehiculo(this._marca, this._color, this._velocidad, this.tamanio);
  //setter y getters
  void setMarca(String newMarca) {
    _marca = newMarca; //se cambia el valor del atributo marca
  }

  String getMarca() {
    return _marca;
  }

  //**************************************

  void setcolor(String newColor) {
    _color = newColor;
  }

  String getcolor() {
    return _color;
  }

  //******************
  void setVelocidad(int newVelocidad) {
    if (newVelocidad < 0) {
      print("valor incorrecto");
    } else {
      _velocidad = newVelocidad;
    }
  }

  int getvelocidad() {
    return _velocidad;
  }

  //******************************************** */
  void setTamanio(double newTamanio) {
    tamanio = newTamanio;
  }

  double gettamanio() {
    return tamanio;
  }

  //metodos adicionales
  void avanzar() {
    print("El carro avanza a una velocidad de $_velocidad");
  }

  void detenerse() {
    _velocidad = 0;
    print("El vehiculo se detuvo");
  }

  void giraIzquierda() {
    print("El vehiculo gira a la izquierda con velocidad de $_velocidad");
  }

  void girarDerecha() {
    print("El vehiculo gira a la derecha con velocidad de $_velocidad");
  }

  void mostrarDatos() {
    print("Marca: $_marca");
    print("Color: $_color");
    print("velocidad: $_velocidad");
    print("Tamañio: $tamanio");
    print("_" * 70);
  }
}

void main(List<String> args) {
  List<vehiculo> arrayVehiculos = [];

  int cantVehiculos;
  print("Ingrese la cantidad de vehiculos");
  cantVehiculos = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  for (var i = 0; i < cantVehiculos; i++) {
    print("_" * 50);
    print("Datos para el vehiculo #{i+1}");
    print("Ingrese la marca, color, velocidad y tamaño");
    String marcaTxt = stdin.readLineSync() ?? "";
    String colorTxt = stdin.readLineSync() ?? "";
    int velocidadTxt = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
    double tamanioTxt = double.parse(stdin.readLineSync() ?? "") ?? 0;
    //creamas un objeto de la clase Vehiculo
    vehiculo carro_objeto = vehiculo(
      marcaTxt,
      colorTxt,
      velocidadTxt,
      tamanioTxt,
    );
    //se agrega el objeto al array de vehiculos
    arrayVehiculos.add(carro_objeto);
  }

  for (var i = 0; i < arrayVehiculos.length; i++) {
    print("Marca: ${arrayVehiculos[i].getMarca()}");
    print("Color: ${arrayVehiculos[i].getcolor()}");
    print("velocidad: ${arrayVehiculos[i].getvelocidad()}");
    print("tamaño: ${arrayVehiculos[i].gettamanio()}");
    arrayVehiculos[i].mostrarDatos();
    arrayVehiculos[i].avanzar();
    print("_" * 70);
  }
}
