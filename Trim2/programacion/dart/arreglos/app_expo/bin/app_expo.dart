// Estructura de Datos para App - Gestión aleatoria Exposiciones
import 'dart:io';
import 'dart:math';

List<String> temas = [];
List<int> cupos = [];
List<String> estudiantes = [];
List<String> aleatorioEstudiantes = [];
List<List<String>> asignaciones = [];

void main(List<String> arguments) {
  menuPrincipal();
}

void menuPrincipal() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Gestión Temas y cupos");
    print("2. Gestión Estudiantes");
    print("3. Generar exposiciones aleatorias");
    print("4. Visualizar temas y estudiantes asignados");
    print("5. Precargar datos de prueba");
    print("6. Salir");
    print("*" * 50);
    print("Digite la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        gestionTemasCupos();
        break;
      case 2:
        gestionEstudiantes();
        break;
      case 3:
        generarExposiciones();
        break;
      case 4:
        visualizarAsignaciones();
        break;
      case 5:
        precargarDatosPrueba();
        break;
      case 6:
        print("Has salido de la aplicación!");
        break;
      default:
        print("Opción incorrecta!");
    }
  } while (opcion != 6);
}

void gestionTemasCupos() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un tema");
    print("2. Listar temas");
    print("3. Editar un tema");
    print("4. Eliminar un tema");
    print("5. Salir");
    print("*" * 50);
    print("Ingrese la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearTema();
        break;
      case 2:
        listarTemas();
        break;
      case 3:
        editarTema();
        break;
      case 4:
        eliminarTema();
        break;
      case 5:
        print("Salir del menú de temas!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void gestionEstudiantes() {
  int opcion = 0;
  do {
    print("*" * 50);
    print("1. Crear un Estudiante");
    print("2. Listar Estudiantes");
    print("3. Editar un Estudiante");
    print("4. Eliminar un Estudiante");
    print("5. Salir");
    print("*" * 50);
    print("Ingrese la opción deseada");
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    switch (opcion) {
      case 1:
        crearEstudiantes();
        break;
      case 2:
        listarEstudiantes();
        break;
      case 3:
        editarEstudiantes();
        break;
      case 4:
        eliminarEstudiantes();
        break;
      case 5:
        print("Salir del menú de Estudiantes!");
        break;
      default:
        print("Opción incorrecta");
        break;
    }
  } while (opcion != 5);
}

void crearEstudiantes() {
  String estudiante = "";
  print("Ingrese el nombre del nuevo estudiante");
  estudiante = stdin.readLineSync() ?? ""; //nulo seguro ?? ""
  estudiantes.add(estudiante);
}

void listarEstudiantes() {
  print("Listado de estudiantes");
  if (estudiantes.isEmpty) {
    print("No existen estudiantes");
    return;
  }
  print("*" * 50);
  for (var i = 0; i < estudiantes.length; i++) {
    print("${i + 1}. ${estudiantes[i]}");
  }
  print("*" * 50);
}

void editarEstudiantes() {
  listarEstudiantes();
  print("Seleccione el estudiante que desea editar");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (opcion < 1 || opcion > estudiantes.length) {
    print("Estudiante incorrecto");
    return;
  }
  int indice = (opcion - 1);
  print(
    "Digite el nombre del estudiante: ${estudiantes[indice]}. Solo presione ENTER si desea que continue el mismo nombre",
  );
  String nuevoEstudiante = stdin.readLineSync() ?? "";
  if (nuevoEstudiante.isNotEmpty) {
    estudiantes[indice] = nuevoEstudiante;
  }
  print("El estudiante fue editado con exito");
}

void eliminarEstudiantes() {
  listarEstudiantes();
  if (estudiantes.isEmpty) return;
  print("Seleccione el estudiante que desea eliminar");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (opcion < 1 || opcion > estudiantes.length) {
    print("Estudiante incorrecto");
    return;
  }
  int indice = opcion - 1;
  estudiantes.removeAt(indice);
  print("El estudiante fue eliminado exitosamente");
}

void generarExposiciones() {
  print("----Generando Exposiciones Aleatorias----");
  if (temas.isEmpty) {
    print("No hay temas registrados");
    return;
  }
  if (estudiantes.isEmpty) {
    print("No hay estudiantes");
    return;
  }
  int totalEstudiantes = estudiantes.length;
  int totalCupos = 0;
  for (var item in cupos) {
    totalCupos += item;
  }
  print("Total estudiantes: $totalEstudiantes");
  print("Total cupos: $totalCupos");

  if (totalCupos != totalEstudiantes) {
    print("NO se puede realizar la asignacion");
    if (totalEstudiantes > totalCupos) {
      int diferencia = totalEstudiantes - totalCupos;
      print("Faltan $diferencia cupos por asignar");
    } else {
      int diferencia = totalCupos - totalEstudiantes;
      print("Faltan $diferencia estudiantes por crear");
    }
    return;
  }
  aleatorioEstudiantes = List.from(
    (estudiantes),
  ); // se crea una  copia de l vector estudiantes
  //Mezclar aleatoriamente el vector
  aleatorioEstudiantes.shuffle(Random());
  asignaciones = [];
  int puntero = 0;

  for (var i = 0; i < temas.length; i++) {
    int cantidad = cupos[i];
    List<String> grupoAsignado = [];
    for (var j = 0; j < cantidad; j++) {
      grupoAsignado.add(aleatorioEstudiantes[puntero]);
      puntero++;
    }
    asignaciones.add(grupoAsignado);
  }
  //Se llama al metodo para visualizar asignaciones
  visualizarAsignaciones();
}

void visualizarAsignaciones() {
  print("-----Asignacion de exposiciones-----");
  if (asignaciones.isEmpty) {
    print("No se han hecho asignaciones");
    return;
  }
  print("*" * 50);
  for (var i = 0; i < asignaciones.length; i++) {
    print("*" * 50);
    print("Tema: ${temas[i]}");
    print("*" * 50);
    print("Estudiantes Asignados");
    for (var j = 0; j < asignaciones[i].length; j++) {
      print(asignaciones[i][j]);
    }
    print("*" * 50);
  }
}

void precargarDatosPrueba() {
  temas = [
    '¿Qué es la programación Orientada a Objetos? ¿Cuáles son las características principales de la POO?',
    '¿Cuál es la diferencia entre POO y programación estructurada? ¿Qué otros paradigmas hay y en qué consisten?',
    '¿Qué es un objeto? ¿Qué es una Clase? ¿Cuál es la diferencia entre Objeto y Clase?',
    '¿Qué es abstracción? Tener en cuenta: Clases Abstractas vs. Interfaces.',
    '¿Qué es encapsulamiento? Modificadores de acceso, constructores/destructores, miembros estáticos.',
    '¿Qué es herencia y un ejemplo gráfico y funcional?',
    '¿Qué es polimorfismo y un ejemplo gráfico y funcional? (Overriding vs. Overloading)',
    '¿Cuáles son los principales diagramas de UML? Relaciones entre clases en UML y código.'
  ];
  cupos = [3, 3, 3, 3, 3, 4, 4, 4]; // Total cupos = 27 estudiantes
  estudiantes = [
    'Alejandro Rua',
    'Stiven Gonzalez',
    'Miguel Angel Garcia',
    'Leider Serna',
    'Maria Jose Osorio',
    'Mateo Pescador',
    'Mateo Henao',
    'Angie Veronica Carvajal',
    'Juan Jose Bernal',
    'Juan Diego Giraldo',
    'Miguel Angel Cortes',
    'Valeria Murillo',
    'Yulieth Luna',
    'Jean Karlo Velazquez',
    'Camilo Morales',
    'Thomas Toro',
    'Johan Sebastian Zambrano',
    'Susana Castro',
    'Karol Daian Navia',
    'David Ramirez',
    'Santiago Gomez',
    'Camilo Gil',
    'Hector Alejandro Jimenez',
    'Esteban Quiceno',
    'Valeria Arenas',
    'Jeronimo Medina',
    'Juan Jose Lopez',
  ];
  asignaciones = [];
  print("Datos precargados con exito");
}

// Funciones para TEMAS
void crearTema() {
  String tema = "";
  int cupo = 0;
  print("Ingrese el nuevo tema");
  tema = stdin.readLineSync() ?? '';
  print("Ingrese la cantidad de personas para el nuevo tema: $tema");
  cupo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  temas.add(tema); // Se añade el tema al vector de TEMAS
  cupos.add(cupo); // Se añade el cupo al vector de CUPOS
}

void listarTemas() {
  print("Listado de Temas");
  if (temas.isEmpty) {
    print("No existen temas");
    return;
  }
  print("*" * 50);
  for (var i = 0; i < temas.length; i++) {
    print("${i + 1}. ${temas[i]} - Cupos:${cupos[i]}");
  }
  print("*" * 50);
}

void editarTema() {
  listarTemas();
  print("Cual tema desea editar?");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (opcion < 1 || opcion > temas.length) {
    return;
  }
  int indice = opcion - 1; //Aqui se accede al indice correcto
  print(
    "Digite el nuevo nombre para el tema: ${temas[indice]}. Solo presiona ENTER si desea que continue el mismo nombre",
  );
  String nuevoTema = stdin.readLineSync() ?? "";
  if (nuevoTema.isNotEmpty) {
    temas[indice] = nuevoTema; // Se reemplaza el nombre del tema
  }
  print("Digite el nuevo cupo del tema:${temas[indice]}");
  int newCupo = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

  if (newCupo > 0) {
    cupos[indice] = newCupo;
  }
}

void eliminarTema() {
  listarTemas();
  if (temas.isEmpty) return;
  print("Seleccione el tema que desea eliminar");
  int opcion = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
  if (opcion < 1 || opcion > temas.length) {
    print("Tema Incorrecto");
    return;
  }
  int indice = opcion - 1;
  temas.removeAt(indice); // Se elimina el tema requerido
  cupos.removeAt(indice); //Se elimina el cupo correspodiente al tema
  print("El tema ha sido eliminado");
}
