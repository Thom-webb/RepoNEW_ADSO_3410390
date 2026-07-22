import 'dart:io';

/* El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año 2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo de menos de 25 años. Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una antigüedad en su empleo de 25 años o más. Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una antigüedad en su empleo de 25 años o mas. Determinar en que tipo de jubilación, quedara adscrita una persona.*/

void main() {

  print('Ingrese la edad de la persona:');
  int edad = int.parse(stdin.readLineSync()!);
  
  print('Ingrese los años de antigüedad en el empleo:');
  int antiguedad = int.parse(stdin.readLineSync()!);
  
  String tipoJubilacion = '';
  
  if (edad >= 60) {
    if (antiguedad < 25) {
      tipoJubilacion = 'Jubilación por Edad';
    } else {
      tipoJubilacion = 'Jubilación por Antigüedad Adulta';
    }
  } else {
    if (antiguedad >= 25) {
      tipoJubilacion = 'Jubilación por Antigüedad Joven';
    } else {
      tipoJubilacion = 'No cumple los requisitos para jubilarse en el 2009';
    }
  }
  
  // 3. MOSTRAR RESULTADO
  print('\n--- RESULTADO ---');
  print('Edad: $edad años');
  print('Antigüedad: $antiguedad años');
  print('Tipo de jubilación: $tipoJubilacion');
}