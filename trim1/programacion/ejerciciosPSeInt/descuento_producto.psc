Proceso descuento_producto
	//thomas toro cuervo
	//ej7:Comprar un producto oon el 25% de descuento 
	
	//1. Definicion variables 
	Definir nombre como cadena;
	definir valor_prod, descuento, valor_final como real;
	//2. entrada 
	Escribir "ingrese el nombre del producto";
	leer nombre;
	Escribir "ingrese el valor del producto";
	leer valor_prod;
	//3. Proceso 
	//descuento <- valor_prod * 25 / 100; // regla de 3
	descuento <- valor_prod * 0.25;
	valor_final <- valor_prod - descuento;
	Escribir " el producto " ,nombre, " tuvo un descuento de " ,descuento, " y su valor final quedo en: " , valor_final;
	
FinProceso
