Algoritmo Litros_a_Galones
	definir Gl_entrada, INT_litros, PC_DL, PD_GL como real;
	escribir "Inventario inicial del dia en litros";
	leer INT_litros;
	INT_litros <- INT_litros * (1/3.785);
	escribir "Ahora este es el inventario catual en Galones";
	escribir INT_litros;
	escribir "Ingresen los galones de pago";
	leer Gl_entrada;
	Gl = INT_litros;
	Gl <- Gl + Gl_entrada;
	escribir"ahora este es el inventario total en Galones";
	escribir Gl;
	INT_CMP = Gl;
	INT_CMP <- INT_CMP * (3.785/1);
	escribir "Comprobacion de los galones totales ingresados ahora a litros";
	escribir INT_CMP;
	escribir "Que precio tendra la leche el dia de hoy";
	leer PC_DL;
	PC_DL <- PC_DL * INT_CMP;
	escribir "Este seria el precio total de la leche vendida de hoy en galones en pesos";
	escribir PC_DL;
FinAlgoritmo