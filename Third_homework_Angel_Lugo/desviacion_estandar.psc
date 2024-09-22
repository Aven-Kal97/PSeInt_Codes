Algoritmo desviacion_estandar
	//programa que calcule el promedio de N cantidad de datos
	//A = calificaciones y N como entero, i 0 ITERADOR Y B= promedio, D = DESVIACION ESTANDAR 
	definir A, B, D como real;
	definir N, i  como entero;
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
	//calcular la desviacion estandar 
	D <- 0;
	para i <- 0 hasta N -1 hacer;
		D <- D +(A[i] - B) ^ (2) / N;
	FinPara
	//ESCRIBIR EL PROMEDIO
	escribir "El promedio es", "",B;
	escribir "L adesviacion estandar",raiz(D);
	
	
	
	
	
FinAlgoritmo
