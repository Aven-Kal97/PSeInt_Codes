Funcion resultado <- actualiza(posicion, velocidad)
	Definir  resultado Como Real;
	resultado <- redon(posicion+velocidad);
FinFuncion
Funcion  resultado <- mirender(posicion, largo)
	Definir resultado como cadena;
	Definir indice como entero;
	resultado <- "|";
	
	para indice <- 1 hasta largo Hacer
		si indice = posicion Entonces
			resultado <- resultado + "O";
		SiNo
			resultado <- resultado + " ";
		FinSi
	FinPara
	resultado <- resultado + "|";
FinFuncion
Algoritmo Bolita_rebotando
	Definir  linea como cadena;
	Definir px, py, fila, columna, indice como entero;
	Definir  vx, vy, dt, ti, intervalo como real;
	// tamano
	fila <- 10;
	columna <- 20;
	// posicion del mensaje
	px <- abs(azar(columna - 2)) + 1;
	py <- abs(azar(fila - 2)) + 1;
	// velocidades
	vx <- 12;
	vy <- 12;
	intervalo <- 20;
	dt <- 0.1;
	para ti <- 0 Hasta intervalo Con Paso  dt Hacer
		px <- actualiza(px, vx * dt);
		si px <= 1 Entonces
			px <- abs(px);
			vx <- -1 * vx;
		FinSi
		si px > columna Entonces
			px <- columna - px MOD columna;
			vx <- -1 * vx;
		FinSi
		py <- actualiza(py, vy * dt);
		si py <= 1 Entonces
			py <- abs(py);
			vy <- -1 * vy;
		FinSi
		si py > fila Entonces
			py <- fila - py MOD fila;
			vy <- -1 * vy;
		FinSi
		Limpiar Pantalla;
		para indice <- 1 hasta fila hacer
			si indice = py Entonces
				linea <- mirender(px, columna);
			SiNo
				linea <- mirender(0, columna);
			FinSi
			imprimir linea;
		FinPara
		Esperar  250 Milisegundos;
		linea <- "";
	FinPara
FinAlgoritmo
