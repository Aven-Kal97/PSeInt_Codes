Algoritmo valor_de_pi
definir pn, i como entero;
definir TMR como real;
escribir "Estimaremos la formula de pi"
leer pn;
i =1;
TRM = 0;
	Para i<-1 Hasta pn Hacer;
		TRM <- TMR + (-1)^i * 1/(3+2*(i-1))
		escribir TRM;
	Fin Para
	TRM <- (TRM + 1) * 4;
escribir TRM;
FinAlgoritmo
