Algoritmo Año_bisiesto
	//A = año a ingresar
	escribir "Con este programa veremos si un año es bisiesto o no ";
	definir A como real;
	escribir "El año de comprobacion";
	leer A;
	si (A % 400 = 0 Y A % 100 = 0) O (A % 4 = 0 Y A % 100 <> 0) entonces;
		escribir "Es un año bisiesto";
	sino 
		escribir "No es un año bisiesto";
	FinSi
	
FinAlgoritmo
