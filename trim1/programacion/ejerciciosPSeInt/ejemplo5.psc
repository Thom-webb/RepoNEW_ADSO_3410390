Proceso ejemplo5
	//Thomas toro 
    //pedir la  edad de una persona . en caso de ser mayor de edad, pedir dos numeros y sumarlos de lo contrario, realizar la formula: x^2+6*3
	
	//Definicion de variables
	Definir edad Como Entero;
	Definir num1 como real;
	Definir num2 como real;
	definir resultado como real;
	
	//entrada
	Escribir "Ingrese su edad";
	Leer edad;
	//Proceso 
	si (edad >= 18) Entonces
		Escribir "Ingrese los 2 numeros";
		Leer num1, num2;
		resultado <- num1 + num2;
		Escribir "la suma de los numeros es: ",resultado, ;
	SiNo
		Escribir "Ingrese el valor de x, para formula x^2+6*3";
		Leer num1;
		resultado <- num1^2+6*3;
		Escribir "El resultado de la formula es: ",resultado;
	FinSi
FinProceso

