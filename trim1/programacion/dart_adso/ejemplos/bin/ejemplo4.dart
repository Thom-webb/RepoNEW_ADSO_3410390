//condicionales

//condicional simple

void main(List<String> args) {
  int edad = 18;
  if (edad >= 18) {
    print("acceso permitido");
  }

  //condiconal doble
  double valor_nota;
  valor_nota = 3.8;
  if (valor_nota < 3) {
    print("no aprueba la nota");
  } else {
    print("aprueba la nota");
  }

  //condicional anidado
  bool tiene_cuenta = true;
  double saldo = 450000;
  if (tiene_cuenta == true) {
    //se valida si el usuario tiene cuenta
    if (saldo >= 10000) {
      print("puede retirar dinero");
    } else {
      print("no puede retirar dinero");
    }
  } else {
    print("usted no tiene cuenta en este banco");
  }

  //condicional multiple
  String dia = "martes";
  switch (dia) {
    case "lunes":
      print("Todos hacen el aseo");
      break;
    case "martes":
      print("Dejar el repositorio fill en GitHub");
      break;
    case "Miercoles":
      print("Entrega de evidencias ");
      break;
    case "sabado":
    case "domingo":
      print("No hay formacion");
      break;
    default:
      print("dia nomal de formacion");
  }
}
