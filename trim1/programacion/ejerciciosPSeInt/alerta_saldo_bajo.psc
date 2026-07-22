Proceso alerta_saldo_bajo
	//thomas toro cuervo 
	// 1 definicion de variables 
	Definir saldo como real;
	Definir recarga como real;
	//2. inicializacion de variables
	recarga <- 0;
	Escribir "ingrese el valor de su saldo";
	leer saldo;
	si(saldo<20000)Entonces
		Escribir "susaldo es critico, se relizara una recarga automatica";
		recarga <- 100000;
	FinSi
	saldo <- saldo + recarga;
	Escribir "su saldo es de: ",saldo;
FinProceso
