Algoritmo Euclides
// A Y B son las variables donde ingresaremos nuestros datos y MCD la operacion
definir A, B, MCD como entero;
escribir "Ingrese el primer numero";
leer A;
escribir "Ingrese el segundo numero";
leer B;
    mientras B <> 0 hacer
        MCD <- B;
        B <- A % B;
        A <- MCD;
    FinMientras
escribir "El Máximo Común Divisor es: "," = ",A;
FinAlgoritmo
