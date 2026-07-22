import 'dart:io';

void main() {
  // Solicitar al usuario las horas trabajadas
  print('Ingrese las horas trabajadas en la semana:');
  String? input = stdin.readLineSync();
  
  // Validar que la entrada no sea nula y sea un número válido
  if (input != null) {
    double horasTrabajadas = double.tryParse(input) ?? 0;
    
    // Calcular salario
    double salarioSemanal = calcularSalario(horasTrabajadas);
    
    // Mostrar resultado
    print('Resultado');
    print('Horas trabajadas: $horasTrabajadas');
    print('Salario semanal: \$${salarioSemanal.toStringAsFixed(2)}');
  } else {
    print('No se ingresaron datos válidos.');
  }
}

double calcularSalario(double horas) {
  const double pagoNormal = 16.0;
  const double pagoExtra = 20.0;
  const int horasNormales = 40;
  
  if (horas <= horasNormales) {
    // Caso: 40 horas o menos
    return horas * pagoNormal;
  } else {
    // Caso: más de 40 horas
    double horasExtras = horas - horasNormales;
    return (horasNormales * pagoNormal) + (horasExtras * pagoExtra);
  }
}