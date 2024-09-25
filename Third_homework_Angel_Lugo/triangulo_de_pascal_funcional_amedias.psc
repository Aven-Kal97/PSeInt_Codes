//La funcion siempre debe ir arriba del codigo siempre como buena practica de programacion.
Funcion factorial <- MiFactorial(n)
	//Declaramos la variable factorial
	Definir factorial Como Entero;
	factorial <- 1;
	
	//Caso en que n sea diferente de 0
	Mientras n <> 0 Hacer
		factorial <- factorial * n;
		n <- n - 1;
	FinMientras
FinFuncion
//Encapsular la funcion para que imprima el renglon N
SubProceso imprimir_renglon(n)
	definir i, coeficiente como entero;
	definir linea como cadena;
	linea <- "";
	para i <- 0 hasta n hacer;
		coeficiente <- combinacion(n, i);
		linea <- Concatenar(linea, ConvertirATexto(coeficiente));
		linea <- Concatenar(linea, " ");
		//scribir coeficiente;
	FinPara
	escribir linea;
FinSubProceso

Funcion coeficiente <- combinacion(n , r)
	//Declaramos variables
	Definir coeficiente, arriba, abajo Como Entero;
	arriba <- MiFactorial(n);
	abajo <- MiFactorial(r) * MiFactorial(n - r);
	coeficiente <- arriba / abajo;
FinFuncion

Algoritmo triangulo_de_pascal
	//Definir coeficiente Como Entero
	definir linea como cadena;
	definir n, r, i, j, coeficiente como entero;
	escribir "n";
	leer n;
	//Aqui imprimimos todos los renglones del triangulo, que fueron previamente encapsulados
	// en la linea 14
	Para j <- 0 Hasta n Hacer;
		imprimir_renglon(j);
	FinPara
	//coeficiente <- combinacion(3,3);
	//Escribir coeficiente;
FinAlgoritmo