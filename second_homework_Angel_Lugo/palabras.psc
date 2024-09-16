Algoritmo palabras
// A,B = el primer conjunto de palabras del los 2 casos
definir A,B Como Caracter;
escribir "Ingrese la primera palabra";
leer A;
escribir "ingrese la segunda palabra";
leer B;
R1 = Longitud(A);
R2 = Longitud(B);
escribir "El numero de palabras de"," ",A," ","="," ",R1;
escribir "El numero de palabras de"," ",B," ","="," ",R2;
si (R1 = R2) entonces;
	escribir A," ", "tiene el la misma longitud de palabras que"," ",B," ","que en numeros seria", " ",R1;
FinSi
si (R1 > R2) entonces;
	escribir A," ","Tiene mas palabras que"," ",B," ","que en numero seria", " = ",R1;
FinSi
si (R2 > R1) entonces;
	escribir B," ","Tienes mas palabras que"," ",A," ","que en numero seria", " = ",R2;
FinSi
FinAlgoritmo
