class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  Empleado(
    this.nombre,
    this.edad,
    this.salario,
    this.puesto,
    this.tipoContrato,
  );

  void aumentarSalario(double porcentaje) {
    double aumento = salario * porcentaje / 100;
    salario = salario + aumento;
  }

  void cumplirAnios() {
    edad = edad + 1;
  }

  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
  }

  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Salario: $salario');
    print('Puesto: $puesto');
    print('Tipo de contrato: $tipoContrato');   
  }

  double calcularBonificacion() {
    if (tipoContrato == 'Contratista') {
      return salario * 0.10;
    } else if (tipoContrato == 'Temporal') {
      return salario * 0.05;
    } else if (tipoContrato == 'Indefinido') {
      return salario * 0.15;
    } else {
      return 0;
    }
  }
}
