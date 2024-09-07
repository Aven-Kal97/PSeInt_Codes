Algoritmo convertidor_CM_A_Pl
	definir Cm,Pl como reales;
	escribir "ingrese los centimetros"
	leer Cm;
	Pl <- Cm * (1/2.54);
	escribir Pl "Inches"
	escribir "ingrese las pulgadas"
	leer Pl;
	Cm <- Pl * (2.54/1);
	escribir Cm "centimeters"
FinAlgoritmo
