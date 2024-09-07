Algoritmo inversor_numero
	definir Num_a_Int1,Num_a_Gd como real;
	definir String_1,String_a_Num como caracter;
	escribir "E	scriba un numero"
	leer Num_a_Int1;
	String_1 = ConvertirATexto(Num_a_Int1);
	Num_a_Gd = Longitud(String_1);
	String_a_Num = ""
	Mientras Num_a_Gd > 0 hacer;
		String_a_Num = String_a_Num + Subcadena(String_1,Num_a_Gd,Num_a_Gd);
		Num_a_Gd = Num_a_Gd - 1
	FinMientras
	escribir "El numero ahora quedaria asi invertido";
	escribir ConvertirANumero(String_a_Num);
	escribir "Aqui el numero regresa a su normalidad";
	escribir Num_a_Int1;
FinAlgoritmo
