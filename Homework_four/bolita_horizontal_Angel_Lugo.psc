Funcion resultado <- actualiza(posicion, velocidad)
	Definir resultado Como Real;
	resultado <-redon(posicion + velocidad);
FinFuncion
Funcion resultado <- miRender(posicion, largo)
	Definir resultado como Cadena;
	Definir indice Como Entero;
	resultado <- "|";
	para indice <- 1 Hasta largo Hacer
		Si indice = posicion Entonces
			resultado <- resultado + "O";
		Sino
			resultado <- resultado + " ";
		FinSi
	FinPara
	resultado <- resultado + "|";
FinFuncion
Algoritmo bolita_horizontal
	Definir posicion, velocidad, largo Como Entero;
	Definir intervalo, dt, ti Como Real;
	Definir linea como Cadena;
	largo <- 50;
	posicion <- abs(azar(largo - 2)) + 1;
	velocidad <- 10;
	intervalo <- 100;
	dt <- 0.1;
	para ti <- 0 hasta intervalo con Paso dt Hacer
		posicion <- actualiza(posicion, velocidad * dt);
		si posicion <=  1 Entonces
			posicion <- abs(posicion);
			velocidad <- -1 * velocidad;
		FinSi
		Si posicion > largo Entonces
			posicion <- largo - posicion MOD largo;
			velocidad <- -1 * velocidad;
		FinSi
		linea <- miRender(posicion, largo);
		Limpiar Pantalla;
		Escribir linea;
		Escribir "posicion: ", posicion;
		Escribir "velocidad: ", velocidad;
		Esperar 200 Milisegundos;
		linea <- "";
	FinPara
FinAlgoritmo

