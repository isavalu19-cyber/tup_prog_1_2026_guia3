Proceso canciones
	Definir hora, minutos, segund Como Entero;
	Definir nombreCancion, nombreMayor, nombreMenor Como Cadena;
	Definir mayor, menor Como Entero;
	Definir duracion, totalSeg, min, seg Como Entero;
	Definir i Como Entero;
	totalSeg <- 0;
	i <- 0;
	Repetir
		i <- i+1;
		Escribir 'cancion : ', i;
		Escribir 'ingrese nombre de la cancion : ';
		Leer nombreCancion;
		Escribir 'minutos : ';
		Leer min;
		Escribir 'segundos : ';
		Leer seg;
		duracion <- min*60+seg;
		totalSeg <- totalSeg+duracion;
		Si i=1 Entonces
			mayor <- duracion;
			menor <- duracion;
			nombreMayor <- nombreCancion;
			nombreMenor <- nombreCancion;
		SiNo
			Si duracion>mayor Entonces
				mayor <- duracion;
				nombreMayor <- nombreCancion;
			FinSi
			Si duracion<menor Entonces
				menor <- duracion;
				nombreMenor <- nombreCancion;
			FinSi
		FinSi
	Hasta Que totalSeg>4440
	hora <- trunc(totalSeg/3600);
	minutos <- trunc((totalSeg MOD 3600)/60);
	segund <- totalSeg MOD 60;
	Escribir 'Total de canciones: ', i;
	Escribir 'Tiempo total: ', hora, ':', minutos, ':', segund;
	Escribir 'Cancion mas larga: ', nombreMayor;
	Escribir 'Cancion mas corta: ', nombreMenor;
FinProceso
