Proceso ejercicio29
	//Thomas toro cuervo 
	// Dado un monto, calcular el descuento considerando que por encima de 100 el descuento es del 10% y por debajo de 100, el descuento es del 2%
	
	Definir Totales_productos como entero;
	definir valor_unitario como real;
	definir valor_total como real;
	
	Escribir "cuantos productos llevaras";
	Leer Totales_productos;
	
	Escribir "digita el valor unitario";
	leer valor_unitario;
	
	valor_total<-Totales_productos*valor_unitario;
	
	Si(Totales_productos<=99)Entonces
		valor_total<-valor_total*0.98;
	SiNo
		valor_total<-valor_total*0.90;
	FinSi
	Escribir "el total a pagar es:",valor_total," gracias por tu compra";
FinProceso
