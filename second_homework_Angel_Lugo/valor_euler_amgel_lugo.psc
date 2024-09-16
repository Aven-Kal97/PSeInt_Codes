Algoritmo valor_euler
//N como el numero a ingresar, i = iterador, E = euler y X = la suma
Definir N Como Entero
Definir i Como Entero
Definir E Como Real
Definir X Como Real
Escribir "Ingrese el numero "
Leer N;
X <- 0
E <- 1
    Para i <- 0 Hasta n Con Paso 1
        Si i > 0 Entonces
            E <- E * i
        FinSi
        X <- X + (1 / E)
    FinPara
    Escribir "La aproximación de e con ", N, " términos es: ", X
FinAlgoritmo
