Proceso ejercicio23
	//Thomas toro cuevo 
	// Pedir tres números y mostrarlos ordenados de mayor a menor.
	
	Definir a , b , c como real;
	Definir ordenados Como Real;
	Dimension ordenados[3];
	
	Escribir "ingresa tus dos numeros para que sean ordenados de mayor a menor";
	leer a , b , c;
	
	si (a>b y a>c) Entonces
		
		ordenados[0]<-a;
		
		si (b>=c) Entonces
			
			ordenados[1]<-b;
			ordenados[2]<-c;
			
		siNo
			ordenados[1]<-c;
			ordenados[2]<-b;
		FinSi
		
	SiNo si (b>a y b>c) Entonces
			ordenados[0]<-b;
			si (a>c) Entonces
				
				ordenados[1]<-a;
				ordenados[2]<-c;
				
			SiNo
				ordenados[1]<-c;
				ordenados[2]<-a;
			FinSi
		
	sino 
		ordenados[0]<-c;
		Si (a>b) Entonces
			
			ordenados[1]<-a;
			ordenados[2]<-b;
			
		sino
			ordenados[1]<-b;
			ordenados[2]<-c;
		FinSi
	FinSi
FinSi

	
	Escribir ordenados[0],",",ordenados[1],",",ordenados[2];
	
FinProceso
