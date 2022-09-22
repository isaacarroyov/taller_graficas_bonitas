# En este script vamos a explorar las estructuras de los datos que estaremos 
# usando en la manipulacion y visualizacion de datos: vectores, factores y 
# data frames

# TIPOS DE DATOS


# ------- VECTORES -------
# Creacion
v1 <- c(10,23,38,400,52)
v2 <- c("Hola","me","llamo","Fulanx")
v3 <- c(1,"2",3,"4")
v4 <- c(FALSE, FALSE, TRUE)
v5 <- c(1,"hola",FALSE)

v1;v2;v3;v4;v5

# -------------------------------------------------------

# Seleccionar un elemento del vector
# seleccionar elemento 1 y 3
v1[1]; v1[3]

# Determinar largo de un vector 
length(v1)

# Selecionar ultimo elemento del vector
v1[length(v1)]

# Modificar un elemento del vector
# Cambiar la palabra Fulanx a tu nombre
v2[length(v2)] <- "Isaac"
v2
# -------------------------------------------------------

# Seleccionar mas de un elemento del vector
v6 <- c(14,26,32,49,51,65,73,86,94)
#   Seleccionar los primeros 3 y ultimos 3
head(v6, 3)
tail(v6,3)

# Seleccionar elementos de los indices 1,3,6 y 9
v6[c(1,3,6,9)]

# Seleccionar elementos del 3 al 6
v6[3:6]

# Seleccionar todos los indices MENOS el 4o
v6[-c(4)]

# Seleccionar todos los elementos MENOS los indices 1,4 y 8
v6[-c(1,4,8)]

# Modificar mas de un elemento del vector
v6[1:3] <- c(100,200,300)
v6
# -------------------------------------------------------
# MASCARAS DE VECTORES
# aqui vamos a usar los operadores logicos que tiene R

# Mascaras con filtros y condiciones
# Seleccionar eleemtnos mayores a 90
v6[v6 > 90]
# Valores mayores a 50 pero menores que 250
v6[v6 > 50 & v6 < 250]

# Mascara con which
# indices donde v6 es mayor que 90
which(v6 > 90)


v6[c(1,3,6)] <- 0
v6[c(2,4)] <- 1000

# Encontrar el indice del primer elmentos que sea el minimo y el maximo
which.min(v6); which.max(v6)
# -------------------------------------------------------

# SECUENCIAS DE NUMEROS

# seq(a, b, by = d)
seq(2,10, by = 2)

# seq(a, b, length.out = n)
seq(0, 100, length.out = 5)

# seq(a, by = d, length.out = n)
seq(0, by = 4, length.out = 5)
# -------------------------------------------------------
# OPERACIONES CON VECTORES
a <- sample(x = 1:100, replace = T, size = 5)
b <- sample(x = 1:100, replace = T, size = 5)

# Suma
a + b


c(1,1,1,1,1,1) + c(1,2,NA)

# Resta
a - b

# Multiplicacion
a * b

# Division
a;b; a/b

# Elevar a una potencia
a^2


# Si los vectores no son del same size
v7 <- c(1,2,3)
v8 <- c(1,2,3,4,5,6)

v7
v8
v7 + v8
v7 - v8
v7*v8
v7/v8

# Funciones matematicas sobre vectores
c <- seq(0,2*pi, by = pi/2)
sin(c)

d <- 1:10
sqrt(d)

# -------------------------------------------------------

# FUNCIONES PROPIAS DE UN VECTOR
a
# Suma de todos los elementos
sum(a)

# Producto de todos los elementos
prod(a)

# Maximos y minimos
max(a); min(a)

# Diferencia entre los elementos de un vector
diff(a)

# Suma acumulativa
cumsum(a)

# Producto acumulativo
cumprod(a)

# Estadistica (media, mediana, desviacion estandar, variancia)
mean(a); median(a); sd(a); var(a)

# FACTORES -> categorias

# Crear factores de un vector 
calificaciones <- sample(x=1:4, size = 20, replace = T)

# Dar nivel a los factores
calificaciones_f1 <- factor(x = calificaciones, levels = c(1,2,3,4,5))
levels(calificaciones_f1)

# Dar Labels a los factores
calificaciones_f2 <- factor(x = calificaciones, levels = 1:5,
                            labels = c("F", "reprobado", "nah", "muy bien", "nerd")
)

levels(calificaciones_f2)

# Factores ordenados
calificaciones_f3 <- ordered(x = calificaciones,
                             levels = c(1,2,3,4,5),
                             labels = c("F", "reprobado", "nah", "muy bien", "nerd")
)
calificaciones_f3
