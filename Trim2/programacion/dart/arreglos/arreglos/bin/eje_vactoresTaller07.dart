import 'dart:io';

void ejercicio7() {
  print('Ingrese una palabra o frase:');
  String? entrada = stdin.readLineSync();
  if (entrada == null) return;
  
  // Eliminar espacios y convertir a minúsculas para comparar sin importar mayúsculas
  String texto = entrada.replaceAll(' ', '').toLowerCase();
  
  // Invertir el texto
  String invertido = texto.split('').reversed.join('');
  
  if (texto == invertido) {
    print('Es palíndromo');
  } else {
    print('No es palíndromo');
  }
}