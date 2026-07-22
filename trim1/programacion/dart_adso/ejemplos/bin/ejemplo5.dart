//operadores

//operador AND

// ignore_for_file: dead_code

void main(List<String> args) {
  bool tiene_carnet = true;
  int edad = 20;

  //condicion: para ingresar al ambiente de formacion

  if (tiene_carnet == true && edad >= 18) {
    print("bienvenido al centro de formacion");
  } else {
    print("no se cumple con los requisitos de acceso");
  }

  //operador OR
  bool es_festivo = true;
  bool es_sabado = false;

  //condicion si es sabado o es festivo, no hay formacion
  if (es_festivo == true || es_sabado == true) {
    print("no hay formacion");
  } else {
    print("si hay formacion");
  }

  //operador NOT
  bool sistema_caido = true; //sistema esta caido

  if (!sistema_caido) {
    //se pregunta si el sistema no esta ciado
    print("el sistema no esta caido");
  } else {
    print("el sistema esta caido");
  }

  //operadores combinados
  // Aprueba si (entrego y saco mas de 3.5)
  //O tiene una excusa valida y puede presentar de nuevo el examen

  double nota = 3.4;
  bool entrego = true;
  bool excusa_valida = false;

  if ((entrego == true && nota >= 3.5) || excusa_valida == true) {
    if (entrego == true) {
      //si entrego el examen
      if (nota >= 3.5) {
        print("aprueba el examen");
      } else {
        print("no aprueba el examen");
      }
    } else { //no entrego el examen
      if (excusa_valida == true) {
        print("puede presentar el examen en otra fecha");
      } else {
        print("no puede presentar el examen");
      }
    }
  } else {
    print("No aprueba ni puede presentar el examen");
  }
}
