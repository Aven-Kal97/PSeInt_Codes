Algoritmo ordenar_numeros_de_menor_a_mayor
// A, B, C, D, E son las variables donde asignaremos valores numéricos
definir A, B, C, D, E como entero;
definir MR como real;
dimension MR[4];
	para A <- 1 hasta 4 hacer;
		escribir "Ingrese los numeros que desea acomodar";
		leer MR[A];
	FinPara
	para A <- 1 hasta 3 hacer;
		para B <- 1 hasta (4 - A) hacer;
			si (MR[B] > MR[B + 1]) entonces;
				D <- MR[B];
				MR[B] <- MR[B + 1];
				MR[B + 1] <- D;
			FinSi
		FinPara
	FinPara
	escribir "Los números se ordenaron de la siguiente manera:";
	para A <- 1 hasta 4 hacer;
		escribir MR[A];
	FinPara
FinAlgoritmo
