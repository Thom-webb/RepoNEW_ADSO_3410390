/* Eje.02 Se requiere un validador de contraseña segura la cual debe cumplir con las contraseñas ingresadas por el usuario tengan mas de 8 caracteres */

void main(List<String> args) {
  String password;
  do{
    print("ingrese una contraseña valida");
    password = stdin.readlineSync()!;
    print("Longitud de la contraseña ${password.Length}");
    if (password.length < 8) {
      print("Su contraseña no es segura, ingresela de nuevo");
    }
  } while (password.lentgth < 8);
  print("Su contraseña se ha asignado con exito");
}