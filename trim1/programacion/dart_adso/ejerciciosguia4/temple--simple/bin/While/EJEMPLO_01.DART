
/* Se requiere simular el lanzamiento de un dado de 6 caras. se debe lanzar el dado hasta que caiga el numero 6. En este momento se le dira al usuario que gano con x cantidad de tiempo */

import 'dart:math';

void main(){
    int intentos = 0; //variable tipo contador
    Random lanzamiento = Random(); // crear objeto de la clase random
    int Valordado;
    do { 
        intentos++;
        print("Lanzamiento #$intentos del dado");
        valorDado = lanzamiento.nextInt(6) + 1;
        print("valor dado $valordado")
    }   while (Valordado != 6);
    print("Has ganado con el numero #6 con $intentos intento");
}