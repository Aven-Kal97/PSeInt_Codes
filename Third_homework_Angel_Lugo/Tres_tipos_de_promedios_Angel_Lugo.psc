Algoritmo Tres_tipos_de_promedios
	//programa que calcule el promedio de N cantidad de datos
	//A = calificaciones y N como entero, i 0 ITERADOR Y B= promedio, D = DESVIACION ESTANDAR 
	definir A, B, PG, PH como real;
	definir N, i  como entero;
	escribir "Calcularemos las calificaciones que desees, en aritmetico,harmonico y geometrico";
	escribir "Cuantas calificaciones se van a promediar";
	leer N;
	dimensionar A[N];
	escribir "Escribe las calificacions";
	//ciclo
	para i <- 0 hasta n - 1 hacer;
		leer A[i];
	FinPara
	// Iniciizar el promedio (asignarle un valor)]
	B <- 0;
	para i <- 0 hasta N -1 hacer;
		B <- B + A[i] / N;
	FinPara
	//promedio geometrico
	PG <- 1;
	para i <- 0 hasta N - 1 hacer;
		PG <- PG * A[i] ^ (1/N);
	FinPara
	PH <- 0;
	para i <- 0 hasta N -1 hacer;
		PH <- PH + (1/A[i]);
		
	FinPara
	
	//ESCRIBIR LOS PROMEDIOS
	escribir "El promedio es aritmetico"," ",B;
	escribir "El promedio geometrico "," ", PG;
	escribir "El promedio harmonico "," ",N/PH;
	
FinAlgoritmo
