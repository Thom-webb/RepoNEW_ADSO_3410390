import 'dart:io';

void main() {
  // 1. PEDIR EL MES Y EL AÑO
  print('Ingrese el nombre del mes:');
  String mes = stdin.readLineSync()!;
  
  print('Ingrese el año:');
  int year= int.parse(stdin.readLineSync()!);
  
  int dias;
  
  // 2. COMPARAR EL MES (usando igualdad exacta con mayúscula inicial)
  if (mes == 'Enero' || mes == 'Marzo' || mes == 'Mayo' || mes == 'Julio' || 
      mes == 'Agosto' || mes == 'Octubre' || mes == 'Diciembre') {
    dias = 31;
  } 
  else if (mes == 'Abril' || mes == 'Junio' || mes == 'Septiembre' || mes == 'Noviembre') {
    dias = 30;
  } 
  else if (mes == 'Febrero') {
    // Verificar si el yeares bisiesto
    if (year% 400 == 0) {
      dias = 29;  // Bisiesto
    } else if (year% 100 == 0) {
      dias = 28;  // No bisiesto
    } else if (year% 4 == 0) {
      dias = 29;  // Bisiesto
    } else {
      dias = 28;  // No bisiesto
    }
  } 
  else {
    print('ERROR: Mes no válido');
    return;
  }
  
  // 3. MOSTRAR RESULTADO
  print('\nEl mes de $mes tiene $dias días en el year$year');
}