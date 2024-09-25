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
SubProceso imprimir_renglon(n,limite)
	definir i, tirar_esquina_a_n, coeficiente como entero;
	definir linea como cadena;
	linea <- "   ";
	// Añadimos un salto o espacio a todos los renglones excepto al ultimo
	tirar_esquina_a_n <- n;
	Mientras tirar_esquina_a_n <> limite Hacer
		linea <- Concatenar(linea, " ");
		tirar_esquina_a_n <- tirar_esquina_a_n + 1;
	FinMientras
	//Optiene los valores del renglon que le demos
	//para i <- 0 hasta n hacer;
	//	coeficiente <- combinacion(n, i);
	//	linea <- Concatenar(linea, ConvertirATexto(coeficiente));
	//	linea <- Concatenar(linea, "*");
		//escribir coeficiente;
	//FinPara
	
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
		imprimir_renglon(j,n);
	FinPara
	Para j <- 0 Hasta n Con Paso 1 Hacer
		
		Para i <- 0 Hasta n- j Con Paso 1 Hacer
			Escribir Sin Saltar "   ";
		FinPara
		
		coeficiente <- 1;
		
		Para r <- 0 Hasta j Con Paso 1 Hacer
			Segun Longitud(ConvertirATexto(coeficiente)) Hacer
				1:Escribir Sin Saltar coeficiente, "     ";
				2:Escribir Sin Saltar coeficiente, "    ";
				3:Escribir Sin Saltar coeficiente, "   ";
				4:Escribir Sin Saltar coeficiente, "  ";
				5:Escribir Sin Saltar coeficiente, " ";
			FinSegun
			
			coeficiente <- coeficiente * (j - r) / (r + 1);
		FinPara
		
		Escribir " ";
	FinPara
	//coeficiente <- combinacion(3,3);
	//Escribir coeficiente;
FinAlgoritmo