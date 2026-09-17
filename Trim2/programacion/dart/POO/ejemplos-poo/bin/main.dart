import 'dart:io';
import 'empleado.dart';

void main() {
 
  List<Empleado> empleados = pedirEmpleados();

 
  mostrarEmpleados(empleados);

 
  probarMetodos(empleados);

 
  mostrarBonificaciones(empleados);
}


List<Empleado> pedirEmpleados() {
  List<Empleado> lista = [];
  String respuesta = 's';

  while (respuesta == 's') {
    print('');
    print('=== Nuevo empleado ===');

    print('Escribe el nombre:');
    String nombre = stdin.readLineSync()!;

    print('Escribe la edad:');
    int edad = int.parse(stdin.readLineSync()!);

    print('Escribe el salario:');
    double salario = double.parse(stdin.readLineSync()!);

    print('Escribe el puesto:');
    String puesto = stdin.readLineSync()!;

    print('Escribe el tipo de contrato (Indefinido, Temporal o Contratista):');
    String tipoContrato = stdin.readLineSync()!;

    Empleado nuevo = Empleado(nombre, edad, salario, puesto, tipoContrato);
    lista.add(nuevo);

    print('¿Quieres agregar otro empleado? (s/n)');
    respuesta = stdin.readLineSync()!;
  }

  return lista;
}
void mostrarEmpleados(List<Empleado> empleados) {
  print('');
  print('===== LISTA DE EMPLEADOS =====');

  for (int i = 0; i < empleados.length; i++) {
    empleados[i].mostrarInformacion();
  }
}

void probarMetodos(List<Empleado> empleados) {

  print('');
  print('>>> Aumentando el salario del primer empleado en 10%');
  empleados[0].aumentarSalario(10);
  empleados[0].mostrarInformacion();

  
  if (empleados.length > 1) {
    print('');
    print('>>> El segundo empleado cumple años');
    empleados[1].cumplirAnios();
    empleados[1].mostrarInformacion();
  }


  print('');
  print('>>> Cambiando el puesto del último empleado');
  empleados[empleados.length - 1].cambiarPuesto('Gerente');
  empleados[empleados.length - 1].mostrarInformacion();
}


void mostrarBonificaciones(List<Empleado> empleados) {
  print('');
  print('===== BONIFICACIONES =====');

  for (int i = 0; i < empleados.length; i++) {
    double bono = empleados[i].calcularBonificacion();
    print('${empleados[i].nombre} recibe una bonificación de $bono');
  }
}