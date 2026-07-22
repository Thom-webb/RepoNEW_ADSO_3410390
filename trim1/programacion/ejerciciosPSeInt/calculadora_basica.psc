Proceso calculadora_basica
	// realizar calculadora con las operaciones basicas. el usuario digita dos numeros y la operacion que desea digitar
	
	definir num1, num2, resultado como real;
	definir opcion Como Entero;
	
	escribir "ingrese el valor del numero 1";
	leer num1;
	Escribir "ingrese el valor de numero 2";
	leer num2;
	escribir "calculadora ADSO - menu principal";
	escribir "1. sumar";
	Escribir "2. restar";
	escribir "3. multiplicar";
	escribir "4. dividir";
	Escribir "ingrese la opcion deseada";
	leer opcion;
	escribir "ingrese el valor numero 1";
	leer num1;
	escribir "ingrese el valor numero 2";
	leer num2;
	Segun opcion hacer
		1:
			resultado <- num1 + num2;
			Escribir "el resultado de la suma es:",resultado;
			
		2:
			resultado <- num1-num2;
			Escribir "el resultadode la resta es:",resultado;
			
		3:
			resultado <- num1*num2;
			Escribir "el resultado de la multiplicacion es:",resultado;
			
		4:
			si(num2 == 0)Entonces
				Escribir "error, no se puede dividir por cero";
			SiNo
				resultado <- num1 / num2;
				Escribir "el resultado de la division es: ",resultado;
			FinSi
	 
	FinSegun
FinProceso
