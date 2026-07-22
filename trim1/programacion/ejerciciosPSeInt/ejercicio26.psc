Proceso ejercicio26
	//Thomas toro cuervo
	// Pedir una nota numérica entera entre 0 y 10, y mostrar dicha nota de la forma: cero, uno, dos, tres...
	
	Definir A como entero;
	
	Escribir "digita tu numero del 0 al 10 para que sea digitado textualmente";
	Leer A;
	
	si(A=0) Entonces
		Escribir "cero";
	SiNo
		si(A=1) Entonces
			Escribir "uno";
		SiNo
			si(A=2) Entonces
				Escribir "dos";
			SiNo
				si(A=3) Entonces
					Escribir "tres";
				SiNo
					si(A=4) Entonces
						Escribir "cuatro";
					SiNo
						si(A=5)Entonces
							Escribir "cinco";
						SiNo
							si(A=6)Entonces
								Escribir "seis";
							SiNo
								si(A=7)Entonces
									Escribir "siete";
								SiNo
									si(A=8)Entonces
										Escribir "ocho";
									SiNo
										si(A=9)Entonces
											Escribir "nueve";
										SiNo
											si(A=10)Entonces
												Escribir "diez";
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
					FinSi
					
				FinSi
			FinSi
			
		FinSi
	FinSi
	
FinProceso
