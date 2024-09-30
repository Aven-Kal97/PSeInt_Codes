Algoritmo raiz_babilonica
	definir aproximacion, N, tolerancia, error como real;
	escribir "Ingrese el la raiz a calcular";
	tolerancia <- 0.0001;
	error <- 1;
	leer N;
	aproximacion <- N/2;
	mientras error >= tolerancia Hacer
		aproximacion <- 0.5 * (N/ aproximacion + aproximacion);
		error <- abs(1 - aproximacion^2/N);    
	FinMientras
	escribir aproximacion;
FinAlgoritmo
