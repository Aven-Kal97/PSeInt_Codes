Funcion resultado <- actualiza(posicion, velocidad)
	Definir resultado Como Real;
	resultado <- redon(posicion + velocidad);
FinFuncion
Funcion resultado <- miRender(posicion, largo)
	Definir resultado Como Cadena;
	Definir indice Como Entero;
	resultado <- "X";
	Para indice <- 1 Hasta largo Hacer
		Si indice = posicion Entonces
			resultado <- resultado + "o";
		SiNo
			resultado <- resultado + " ";
		FinSi
	FinPara
	resultado <- resultado + "X";
FinFuncion
Algoritmo bolita_vertical
	Definir posicion, velocidad, velocidad_display, indice, largo, dummy Como Entero;
	Definir intervalo, dt, ti como Real;
	Definir linea Como Cadena;
	largo <- 25;
	posicion <- abs(azar(largo - 2)) + 1;
	velocidad <- 10;
	intervalo <- 10;
	dt <- 0.1;
	//Para ti <- 0 Hasta intervalo Con Paso dt Hacer
	Mientras intervalo > 0 Hacer
		posicion <- actualiza(posicion, velocidad * dt);
		si posicion <= 1 Entonces
			posicion <- abs(posicion);
			velocidad <- -1 * velocidad;
		FinSi
		si posicion > largo Entonces
			posicion <- largo - posicion MOD largo;
			velocidad <- -1 * velocidad;
		FinSi
		linea <- miRender(posicion, largo);
		Limpiar Pantalla;
		//Imprimir linea;
		Para indice <- 0 Hasta Longitud(linea) - 1 Hacer
			Imprimir " | " + Subcadena(linea, indice, indice) + " | ",;
		FinPara
		velocidad_display <- -1 * velocidad;
		dummy <- largo - posicion;
		Imprimir "Altura: ", dummy;
		Imprimir "Velocidad: ", velocidad_display;
		Esperar 200 Milisegundos;
		linea <- "";
	//FinPara
	FinMientras
FinAlgoritmo
	