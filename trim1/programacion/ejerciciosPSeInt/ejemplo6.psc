Proceso ejemplo6
	//Thomas toro 
	// realizar un algoritmo que solicite el nombre de un producto y valor. Luego adivinar un numero si selecciona el numero correcto se aplica un descuento del 10%, de lo contrario para el precio normal. Al final mostrar cuanto debe pagar 
	
	Definir nombre_producto como cadena;
	Definir precio como real;
	Definir numero_adivinar como entero;
	Definir numero_digitado como entero;
	Definir valor_total como real;
	
	Escribir "ingresa nombre del producto";
	leer nombre_producto;
	Escribir "el valor del producto es:";
	Leer precio;
	Escribir "ingrese numero del 1 al 10";
	Leer numero_adivinar;
	Escribir "su producto queda en:";
	leer valor_total;
	
	Si (numero_digitado==numero_adivinar) entonces
		valor_total <- precio*0.10;
		
		
	FinSi
	

FinProceso
