SubProceso imprimir_palabra(display, Num_palabras) 
	definir i como entero;
	para i <- 0 hasta Num_palabras - 1 Hacer
		escribir Sin Saltar display[i];
	FinPara
	escribir "";
FinSubProceso
SubProceso imprimir_letras_usadas(letras_usadas, vidas)
	escribir Sin Saltar "Letras usadas: ";
	definir i como entero;
	Definir a Como Caracter;
	i <- 0;
	para i <- 0 hasta vidas Hacer
		a <- letras_usadas[i];
		escribir a,",";
	FinPara
FinSubProceso

Funcion yes <- estaLetraEnSecreto(Palabra_secreta, letra, Num_palabras)	
	definir i como entero;
	definir yes Como Logico;
	definir letra_en_secreto como Cadena;
	yes <- Falso;
	para i <- 0 hasta Num_palabras - 1 Hacer
		letra_en_secreto <- Subcadena(Palabra_secreta,i,i);
		si letra = letra_en_secreto Entonces
			yes <- Verdadero;
		FinSi
	FinPara
FinFuncion
Algoritmo hangman
	definir Palabra_secreta Como Cadena;
	definir display, letras_usadas, letra_en_secreto Como Caracter;
	definir Num_palabras,i,j, vidas, letras_adivinadas como entero;
	j <- 0;
	definir letra como caracter;
	letras_adivinadas <- 0;
	vidas <- 6;
	escribir "Bienvenido al juego del ahorcado,empezemos con al masacre";
	escribir "Ingrese la palabra secreta";
	leer Palabra_secreta;
	definir continuar_juego Como Logico;
	Num_palabras <- longitud(Palabra_secreta);
	dimensionar display[Num_palabras];
	dimensionar letras_usadas[100];
	// El juego termina cuandoya no tiene vidas o cuando ha adivinado todas las letras
    continuar_juego <- Verdadero;
	Limpiar Pantalla;
	escribir "Comienza el juego";
	//rellenando el arregli que se v a aimprimir
	para i<- 0 hasta Num_palabras -1  Hacer
		display[i] <- " _";
	FinPara
	
	mientras continuar_juego Hacer
		escribir "ingrese una letra";
		leer letra;
		letras_usadas[j]  <- letra;
		j <- j +1;
		//Reemplazamos el arreglo display por las letras que haya encontrado
		para i <- 0 hasta Num_palabras - 1  Hacer
			letra_en_secreto <- Subcadena(Palabra_secreta, i, i);
			si letra = letra_en_secreto Entonces
				letras_adivinadas <- letras_adivinadas + 1;
				display[i] <- letra;
			FinSi
		FinPara
		
		imprimir_palabra(display, Num_palabras);
		// la letra esta en la palabra? 
		si No(estaLetraEnSecreto(Palabra_secreta, letra, Num_palabras)) Entonces
			escribir "perdiste una vida";
			vidas <- vidas - 1;
			si vidas = -1 Entonces
				continuar_juego <- falso;
			FinSi
		FinSi
		si letras_adivinadas = Num_palabras Entonces
			continuar_juego <- falso;
		FinSi
		//imprimir_letras_usadas(letras_usadas, vidas);
		escribir "vidas: ", vidas;
		escribir "letras_adivinadas ", letras_adivinadas;
		//escribir "letras de la palabra secreta" Num_palabras
	FinMientras
FinAlgoritmo