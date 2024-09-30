Funcion resultado <- actualiza(posicion, velocidad)
	//Funcion que actualice la posicion de la bolita
	Definir resultado como Real;
	resultado <- redon(posicion + velocidad);
FinFuncion
Funcion resultado <- miRender(posicion, largo)
	//Funcion que imprima la bolita en la posicion indicada
	Definir resultado como Cadena;
	Definir indice como Entero;
	//Imprimir la pared inicial
	resultado <- "|";
	Para indice <- 1 hasta largo Hacer
		//Si la bolita se encuentra en la posicion la imprimo
		Si indice = posicion Entonces
			resultado <- resultado + "DVD";
		SiNo
			//Si no deja el espacio en blanco
			resultado <- resultado + "   ";
		FinSi
	FinPara
	//Imprimir la pared FinAlgoritmo
	resultado <- resultado + "|";
FinFuncion
Algoritmo DVD_rebotando
	//Programa que imprime la bolita 2D
	Definir linea como Cadena;
	Definir px, py, fila, columna, indice como Entero;
	Definir vx, vy, dt, ti, intervalo como Real;
	//Dimensiones de la caja 
	fila <- 20;
	columna <- 20;
	//Posiciones bolita
	px <- abs(azar(columna -2)) + 1;
	py <- abs(azar(fila -2)) + 1;
	//Velocidades
	vx <- 12;
	vy <- 12;
	intervalo <- 20;
	dt <- 0.1;
	Para ti <- 0 hasta intervalo con paso dt Hacer
		px <- actualiza(px, vx * dt);
		//Corroborar si la pelota colisiona con las paredes
		Si px <= 1 Entonces
			px <- abs(px);
			vx <- -1 * vx;
		FinSi
		Si px > columna entonces 
			px <- columna - px MOD columna;
			vx <- -1 * vx;
		FinSi
		py <- actualiza(py, vy * dt);
		//Corroborar si la pelogta colisiona con el techo o el piso
		Si py <= 1 Entonces
			py <- abs(py);
			vy <- -1 * vy;
		FinSi
		Si py > fila Entonces
			py <- fila - py MOD fila;
			vy <- -1 * vy;
		FinSi
		Limpiar Pantalla;
		//Empieza la magia
		Para indice <- 1 hasta fila Hacer
			//verficar en que fila o renglon se encuentra
			Si indice = py entonces
				linea <- miRender(px, columna);
			SiNo
				//Si no se encuentra en el renglon, hacer que imprima espacios
				linea <- miRender(0, columna);
			FinSi
			Imprimir linea;
		FinPara
		Esperar 250 Milisegundos;
		linea <- "";
	FinPara
FinAlgoritmo
