Proceso Bonifiacicacion_ventas
	//thomas toro cuervo
	//ej bonificacion por ventas realizadas
	//se asume cada venta por valor de 30.000
	//1. definicion variables 
	
	Definir CantVentas como entero;
	definir porcentajeBonificaion como real;
	definir gananciaTotal, gananciaBonificacion, totalVentas como real;
	//asigancion variables
	porcentajeBonificaion <- 0;
	//3. Proceso 
	Escribir "ingrese el total de ventas";
	Leer CantVentas;
	si(CantVentas > 50) Entonces
		Escribir "felicitaciones! meta superada recibes 10% bonificacion";
		porcentajeBonificaion <- 10;
	FinSi
	totalVentas <- CantVentas * 30000;
	gananciaBonificacion <-totalVentas * porcentajeBonificaion / 100;
	gananciaTotal <- totalVentas + gananciaBonificacion;
	Escribir "la ganancia total es de: ",gananciaTotal," se tuvo un total ",CantVentas,"ventas";
	
	
FinProceso
