Algoritmo Valor_pi
// pn = donde guardaremos el valor numerico, i=iterador, TMR = la primera parte de al operacion y TMR_R = es el resultado final de la operacion
Definir TMR, TMR_R Como Real;
Definir pn, i como entero;
escribir"Ingresaremos un valor paras hacer aproximaciones hacia pi";
Escribir " Ingresar el numero de aproximacion "
Leer pn;
	
	Para i <- 1 hasta pn hacer;
		TMR <- 1 / (2*i -1);
		TMR_R <- TMR_R + (-1)^(i -1) * TMR;
	Fin Para
	Escribir "La aproximacion de pi seria ", 4 * TMR_R;
FinAlgoritmo
