Algoritmo algoritmo_RSA
	definir P, Q, N como entero;
	definir llave_publica como entero;
	definir lamda como entero;
	definir e como entero;
	definir D como entero;
	e <- 7;
	leer P;
	leer Q;
	N <- P * Q;
	//resultado_llave_privada <- e^(-1) % N;
	//escribir resultado_llave_privada;
	escribir N;
	//escribir MCD(P,Q);
	//escribir MCD(7,MCM(P - 1, Q - 1));
	//escribir MCM(P,Q);
	lamda <- MCM(P - 1, Q - 1);
	D <- llave_privada(e,lamda);
	escribir D;
	escribir lamda;
FinAlgoritmo
funcion resultado_MCD <- MCD(a,b)
	definir resultado_MCD como entero;
	resultado_MCD <- 0;
	mientras b <> 0 hacer
		resultado_MCD <- b;
		b <- a%b;
		a <- resultado_MCD;
	FinMientras
FinFuncion
funcion resultado_MCM <- MCM(P,Q)
	definir resultado_MCM como entero;
	resultado_MCM <- (P * Q)/ MCD(P,Q);
FinFuncion
//funcion resultado_llave_privada <- llave_privada(e,N)
	//definir resultado_llave_privada como real;
     //resultado_llave_privada <- e^(-1) * N;
//FinFuncion
funcion resultado_D <- llave_privada(e,lamda)
	definir resultado_D, i como entero;
	resultado_D <- -1;
	para i <- 1 hasta lamda hacer 
		si (e*i)%lamda = 1 Entonces
			resultado_D <- i;
		FinSi 
	FinPara
FinFuncion
	