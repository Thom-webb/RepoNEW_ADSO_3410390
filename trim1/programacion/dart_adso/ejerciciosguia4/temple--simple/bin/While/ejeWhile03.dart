import 'dart:io';

void main(List<String> args) {
  //para un modulo del proyecto de identificacion fisica y digital (INDUSTID) necesitas validar un pin de seguridad de 4 digitos escribe el programa que simule el ingreso de contraseña a un usuario incorrecto == sin accso
  String pinCorrecto = "9220";
  String pinIngresado ;
  bool accesoConsedido = false;
  int  numero_intentos = 3;
 
    
  
  while (accesoConsedido == false) {
    
    print("ingrese la contraseña de acceso ");
    pinIngresado = stdin.readLineSync()??"";
    if (pinIngresado == pinCorrecto) {
      print("Acceso concedido puede ingresar");
      accesoConsedido = true;
    }
   
   else if(numero_intentos == 1){
      break;
    }
     else {
      print("el pin es incorrecto");
      numero_intentos --;
      print("le quedan $numero_intentos intentos ");
    }
  }
}
  


