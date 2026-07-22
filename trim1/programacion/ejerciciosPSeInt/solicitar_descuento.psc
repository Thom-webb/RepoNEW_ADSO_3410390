Proceso solicitar_descuento
	//thomas toro cuervo 
	//solicitar al usuario: nombre y valor del producto. se debe solicitar el porcentaje de descuento. Mostrar cuanto debe pagar y cual fue el descuento 
	
	
	//definir variables
	Definir nombre como cadena;
	Definir valor_prod como real;
	Definir descuento como real;
	Definir valor_final como real;
	Definir porcentaje como real;
	
	
	
	//2. entrada 
	
	Escribir " cual es el nombre de tu producto? ";
	Leer nombre;
	
	Escribir " digita el valor de tu producto ";
	Leer valor_prod;
	
	Escribir "en la etiqueta de tu producto hay un porcentaje de descuento por favor digitalo";
	leer porcentaje;
	
	//3. Proceso 
	
	descuento <- (valor_prod*porcentaje) / 100;
	valor_final <- valor_prod-descuento;
	
	
	Escribir " el producto llamado ",nombre," tiene un descuento del: ",porcentaje,"%"," el descuento tiene un valor de ",descuento," y queda con el precio $",valor_final;
	
	
	
FinProceso
