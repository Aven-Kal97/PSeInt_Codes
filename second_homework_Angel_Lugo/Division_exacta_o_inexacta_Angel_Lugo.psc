Algoritmo Division_exacta_o_inexacta
//A = numerador, B = denominador, C = cociente y R = residuo
	Escribir "Ingresar numerador"
	Leer A;
	Escribir "Ingresar el denominador"
	Leer B;
	C<-trunc(A/B);
	R<-A%B;
	Escribir "Cociente: ",C;
	Escribir "Residuo: ",R;
	si R = 0 entonces;
		escribir "La division es exacta";
	sino
		escribir"La division no es exacta";
	FinSi
FinAlgoritmo
