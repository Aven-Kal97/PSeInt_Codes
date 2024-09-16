Algoritmo Teorema_de_pitagoras
	//A = Cateto, B = Cateto, C = Hipotenusa, 
	escribir "En este programa calcularemos el teorema de pitagoras";
	escribir "	Ingrese su promer cateto A";
	definir A como real;
	definir B como real;
	definir C como real;
	leer A;
	escribir "Ingrese su segundo cateto B";
	leer B;
	C <- raiz ((A)^2 + (B)^2);
	escribir "Este seria el resultado de tu hipotenusa";
	escribir C;
	E = A;
	F = B;
	C = C;
	escribir "Vamos hayar el cateto A";
	escribir "Ingrese el valor de su cateto B";
	leer F;
	escribir "Ingrese el valor de su hipotenusa";
	leer C;
	E <- raiz ((C)^2 - (B)^2);
	escribir "Este seria el resultado de su cateto A"
	escribir  E;
	escribir "Vamos hayar el valor del cateto B";
	escribir "Ingrese el valor de su cateto A";
	leer F;
	F <- raiz ((C)^2 - (E)^2);
	escribir "Este es el resultado del valor de su cateto B";
	escribir F;
FinAlgoritmo
