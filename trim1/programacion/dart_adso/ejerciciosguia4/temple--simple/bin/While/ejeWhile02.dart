void main(List<String> args) {
  /* un sistema de resgistro del centro CPIC necesita asignar turnos consecutivos a los aprendices del programa ADSO que ingresan al laboratorio. Escribe un programa dart */

  int turno = 1;
  int limiteTurnos = 5;
  while (turno <= limiteTurnos) {
    print("se a asignado el turno numero $turno");
    turno++;
  }
  print("se an asignado  todo los turnos disponibles");
}
