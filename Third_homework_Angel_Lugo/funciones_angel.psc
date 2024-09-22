//LA funcion es un bloque independiente de instruccciones que nosotros llamamos en el programa principal
Funcion micadena <- misaludo(nombre)
	definir micadena como cadena;
		micadena <- concatenar("hola", nombre);
FinFuncion

Algoritmo test
	definir resultado, nombre como cadena;
	resultado <- misaludo("Jorge");
	Escribir resultado;
	resultado <- misaludo("Angel");
	Escribir resultado;
	resultado <- misaludo("Kevin");
	Escribir resultado;
FinAlgoritmo
