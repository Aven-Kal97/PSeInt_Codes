Algoritmo tipos_de_triangulo
// A,B Y C  son los lados de los triangulos y D la operacion
definir A,C,B,D como real;
escribir "Clasifiacion de los triangulos";
escribir "Ingrese el valor de un lado del triangulo";
leer A;
escribir "Ingrese el valor de un lado del triangulo";
leer B;
escribir "Ingrese el valor de un lado del triangulo";
leer C;
D <- (A + B + C);
si A = B y B = C entonces;
	escribir "Es un triangulo equilatero"
FinSi
si A <> B y B <> C entonces;
	escribir "Es un triangulo escaleno";
FinSi
si A = B Y B <> C entonces;
	escribir "Es un triangulo isoseles";
FinSi
FinAlgoritmo
