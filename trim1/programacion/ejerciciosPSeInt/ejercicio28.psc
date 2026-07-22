Proceso ejercicio28
	//Thomas toro cuervo 
	//Un trabajador recibe su pago, según la cantidad de horas trabajadas y su valor
	//Si la cantidad de horas trabajadas es mayor que 40, éstas se consideran horas extra, y tienen un incremento de $10000 (diez mil) sobre el valor de la hora.
	//Calcular y mostrar el salario (pago) del trabajador. Nota: leer horas trabajadas y valor de la hora. 
	
	Definir horas_Trabajadas como real;
	Definir valor_horas como real;
	Definir horas_extra como entero;
	Definir salario_total como real;

	
	Escribir "cuantas horas trabajaste?";
	leer horas_Trabajadas;
	
	Escribir "cuanto vale la hora de trabajo";
	leer Valor_horas;
	
	si(horas_Trabajadas>40)Entonces
		horas_extra <- horas_trabajadas-40;
		horas_extra <- horas_extra*(valor_horas+10000);
		salario_total <- horas_extra+(40*valor_horas);
	SiNo
		salario_total <- valor_horas*horas_Trabajadas;
	FinSi
	
	Escribir "su pago es:",salario_total," sigue asi";
	
	

	
FinProceso
