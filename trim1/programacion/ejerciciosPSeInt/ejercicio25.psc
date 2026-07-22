Proceso ejercicio25
	//Thomas toro cuervo 
	//Pedir una nota de 0 a 5 y mostrarla de la forma: Insuficiente (0 ? 2,9), Suficiente (3 ? 4,5) y Bien (4,6 ? 5) 
	
	Definir A como real;
	
	Escribir "digita tu nota para saber su es insuficiente, suficiente o bien";
	leer A;
	
	si(A<=2.9) Entonces
		Escribir "tu nota es insuficiente";
		
	SiNo
		si (A>=4.5) Entonces
			Escribir "tu nota es suficiente";
			
		SiNo
			si (A<=5) Entonces
				Escribir "tu nota es buena";
			FinSi
		FinSi
	FinSi
	
FinProceso
