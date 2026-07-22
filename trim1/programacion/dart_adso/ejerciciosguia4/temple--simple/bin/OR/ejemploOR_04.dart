import 'dart:developer';
import 'dart:io';

void main(List<String> args) {
  //en una conferencia en el milton se requieren saber cuantos de automotriz y cuantos de mecanizado se debe solicitar al usurario la cantidad total de aprendices 
  int automo = 0;
  int mecaca = 0;
  int totalapre =0;
  int eleccion;
  int ADSO =0;
  print("ingrese el aforo del auditorio ");
  int aforo = int.parse(stdin.readLineSync()??"");
  for (int i = 0; i< aforo; i ++){
    print("ingrese el numero de aprendices de cada ficha  {$i + 1}1 1:meca 2:auto 3: ADSO");
    eleccion = int.parse(stdin.readLineSync()??"");
    if(eleccion ==1 ){
      mecaca ++;


   

    }
    else if (eleccion == 2 ){
      automo ++;
    }
    else if(eleccion == 3){
      ADSO ++;
    }


  
  }
   print("la cantidad de estudiantes de automotriz son $automo de mecanizado son $mecaca y los estudiantes de ADSO son $ADSO");

}