# Clase 02
# En este script se exploran algunos comandos basicos 
#o iniciales con R 
# asi como la aritmetica basica

# COMANDOS INICIALES
# Instalar una paqueria/libreria
install.packages("magic")

# Cargar la libreria en el ambiente de trabajo
library(magic)
# Documentacion de una paqueteria o funcion
help("magic")
?mean

# Crear variables
a <- 8
# 5 -> b
b = 7

a


# Suma 
a + b

# Resta
a - b

# Multiplicacion
8 * 7

# elevar a la n potencia
2^4

# Division 
16/5

# Division entera
16%/%5

# Division con residuo
16%%5

# Notacion cientifica
1e6
1e-9
5000000
# FUN FACT -> podemos ejecutar varias operaciones en una misma linea
#             usando punto y coma (;)
2*8; 9-10

#Constantes matematicas
pi
Inf
1/0
0/0
NA

# FUNCIONES ESPECIALES
# Funciones trigonometricas
sin(pi/2)
# Funciones trigonometricas inversas

# Funciones hipenolicas e hipervolicas inversas
acos(pi/4)
# Funciones especiales
sinh(1)

# Exponencial
exp(10)



# Logaritmo natural -> ln(x)
log(10)

# Logaritmo base 10 -> log10(x)
log10(1000)
# logaritmo base n  -> log_a (x) donde a > 0'
log(64, base = 2)
# Valor absoluto
abs(-10)
# Factorial -> !x
factorial(4)
# REDONDEO DE NUMEROS
# round(x,n) -> redondar x a n cifras significativas 
numero_ejemplo <- 3.657343


round(numero_ejemplo, 2)
# ceiling(x) -> redondear a parte entera hacia arriba o redondeo hacia arriba
ceiling(numero_ejemplo)
ceiling(3.2)
# floor(x) -> redondear a parte entera hacia abajo o redondeo hacia abajo
floor(numero_ejemplo)
# trunc(x) -> parte entera de x, eliminando decimales
trunc(numero_ejemplo)
# CREAR FUNCIONES
# nombre de funcion <- function(argumento) {
#                                           operaciones
#                                           return (resultado)
#                                           }

# Elevar al cubo un elemento


# Funcion que detecta si un numero es negativo o positivo
