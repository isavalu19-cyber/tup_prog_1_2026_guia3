Proceso loteria
	Definir num, contador, sumaImpar, mayor, menor, contadorPar, contadorImpar Como Entero;
	Definir promedioImpar Como Real;
	contadorImpar <- 0;
	contadorPar <- 0;
	sumaImpar <- 0;
	Para contador<-1 Hasta 20 Hacer
		Escribir ' ingrese los numeros : ', contador;
		Si contador=1 Entonces
			mayor <- num;
			menor <- num;
		SiNo
			Si num>mayor Entonces
				mayor <- num;
			FinSi
		FinSi
		Si num<menor Entonces
			menor <- num;
		FinSi
		Si num MOD 2=1 Entonces
			sumaImpar <- sumaImpar+1;
			contadorImpar <- contadorImpar+1;
		SiNo
			contadorPar <- contadorPar+1;
		FinSi
	FinPara
	Si contadorImpar>0 Entonces
		promedioImpar <- sumaImpar/contadorImpar;
	SiNo
		promedioImpar <- 0;
	FinSi
	Escribir ' el mayor numero es : ', mayor;
	Escribir ' el menor numero es : ', menor;
	Escribir ' la cantidad de numeros pares son : ', contadorPar;
	Escribir ' el promedio de numeros impares es : ', promedioImpar;
FinProceso
