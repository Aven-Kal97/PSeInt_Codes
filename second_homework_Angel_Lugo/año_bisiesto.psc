Algoritmo A�o_bisiesto
	//A = a�o a ingresar
	escribir "Con este programa veremos si un a�o es bisiesto o no ";
	definir A como real;
	escribir "El a�o de comprobacion";
	leer A;
	si (A % 400 = 0 Y A % 100 = 0) O (A % 4 = 0 Y A % 100 <> 0) entonces;
		escribir "Es un a�o bisiesto";
	sino 
		escribir "No es un a�o bisiesto";
	FinSi
	
FinAlgoritmo
