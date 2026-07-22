Proceso condicionales 
	//condicionales anidadas
	//
	
	//Definir  variables
	Definir cant_compras como entero;
	//entrada
	escribir "ingrese la cantidad de compras";
	leer cant_compras;
	si(cant_compras >= 100)Entonces
		escribir "eres un cliente de ORO";
	SiNo
		si(cant_compras>=50)Entonces
			Escribir "eres un cliente platinum";
		SiNo
			escribir "eres cliente bronce";
		FinSi
	FinSi
	
FinProceso
