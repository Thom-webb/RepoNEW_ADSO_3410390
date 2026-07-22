Proceso ejercicio24
	//Thomas toro cuervo 
	//Pedir un número entre 0 y 9.999 y decir cuántas cifras tiene.
	
	Definir A como real;
	
	Escribir "digita tu numero del 0 al 9.999 para ver cuantas cifras tiene";
	leer A;
	
	si(A<10)Entonces
		Escribir "tu numero es de una cifra";
		
	SiNo 
		si(A>=10 y A<100) entonces
			Escribir "tu numero es de dos cifras";
			
		SiNo 
			si (A>=100 y A<999)entonces 
				Escribir "tu numero es de tres cifras";
				
			SiNo 
				si (A>=1000 y A<9999)entonces
				Escribir "tu numero es de cuatro cifras";
				finsi
			FinSi
			
		finsi
		
	FinSi

	
FinProceso
