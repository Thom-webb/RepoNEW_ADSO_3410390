class Persona {
  //Atribustos = Características = Estados
  //Atributos de la clase 
  String _nombre; //Atributo privado
  String _apellido; //Atributo privado
  int _edad; //Atributo privado
  double IMC; //Atributo publico

  //Constructor: Es un metodo que se ejecuta cuando se crea un objeto.  
  //Crear objeto = Instanciar una clase
  Persona(this._nombre, this._apellido, this._edad, this.IMC);

  //Método = Función = Accción = Comportamiento
  //Métodos de la clase
  void mostrarNombreCompleto() {
    print('$_nombre $_apellido');
  }
  void esMayorEdad() {
    if (_edad >= 18) {
      print('Es mayor de edad');
    } else {
      print('Es menor de edad');
    }
  }
  void estadoSalud() {
    print('Su IMC es: $IMC');
    if (IMC < 18.5) {
      print('Clasificación: Bajo peso');
      print('Riesgo aumentado (Desnutricion, debilidad ósea)');
    } else if (IMC <= 24.9) {
      print('Clasificación: Peso normal/Saludable');
      print('Ruesgo mínimo/Promedio');
    } else if (IMC <= 29.9) {
      print('Clasificación: Sobrepeso');
      print('Riesgo aumentado (Problemas cardiometabólicos)');
    } else if (IMC <= 34.9) {
      print('Clasificación: Obesidad I (Moderada)');
      print('Riesgo alto');
    } else if (IMC <= 39.9) {
      print('Clasificación: Obesidad II (Severa)');
      print('Riesgo muy alto');
    } else {
      print('Clasificación: Obesidad III (Mórbida)');
      print('Riesgo extremadamente alto');
    }
  }
}
void main(List<String> args) {
  //Se crea un objeto de la clase persona con los atributos nombre, apellido y edad
  var persona1 = Persona('Mateo', 'Henao', 19, 12); //Nombre. Apellido. Edad. IMC
  persona1.mostrarNombreCompleto();
  persona1.esMayorEdad();
  persona1.estadoSalud();
  var persona2 = Persona('Ana', 'Sánchez', 17, 40); //Se crea otro objeto de la clase persona
  print('-'*70);
  persona2.mostrarNombreCompleto();
  persona2.esMayorEdad();
  persona2.estadoSalud();
  var persona3 = Persona('Pedro', 'Suarez', 25, 29); //Se crea otro objeto de la clase persona
  print('-'*70);
  persona3.mostrarNombreCompleto();
  persona3.esMayorEdad();
  persona3.estadoSalud();
}