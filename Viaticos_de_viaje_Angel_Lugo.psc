Algoritmo Viaticos_de_viaje
	definir DY, NT, FD, MNY_DY, X, Z como real;
	escribir "Calculo de viaticos";
	escribir "Ingrese el numero de dias de los viaticos";
	leer DY;
	escribir "Ingrese el gasto de la estancia";
	leer NT;
	escribir "Ingrese eln gasto de comida";
	leer FT;
	escribir "Gastos establecidos por la empresa (en este caso fueron $400 posos totales)";
	leer MNY_DY;
	X <- NT + FT + MNY_DY;
	DY <- X * DY; 
	escribir "Estos fueron los gastos totales de los viaticos del viaje a Monterrey";
	escribir DY;
	escribir "Una tabla de los gastos diarios";
	M1 = "";
	M2 = "";
	M3 = "";
	M4 = "";
	M5 = "";
	para Z = 1 hasta 1;
		escribir M1, "gasto del dia 1"," " , "" , "=" , X * 1;
	FinPara
	para Z = 1 hasta 1;
		escribir M2, "gasto del dia 2"," " , "" , "=" , X * 2;
	FinPara
	para Z = 1 hasta 1;
		escribir M3, "gasto del dia 3"," " , "" , "=" , X * 3;
	FinPara
	para Z = 1 hasta 1;
		escribir M4, "gasto del dia 4 "," " , "" , "=" , X * 4;
	FinPara
	para Z = 1 hasta 1;
		escribir M5, "gasto del dia 5"," " , "" , "=" , X * 5;
	FinPara
FinAlgoritmo
