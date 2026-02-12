usethis::use_github()
# ----- I N T R O D U C C I Ó N   A   R -----

#EJERCICIOS

#instalar los paquetes markdown y ggplot 2

install.packages("markdown")
install.packages("ggplot2")

# con el comando install.packages podemos instalar paquetes desde consola
#para activar las paqueerias damos

library(markdown)
library(ggplot2)

# ----- B A S E S   P R Á C T I C A S   E N   R -----

#EJERCICIOS

# resuelve las siguiente operaciones aritméticas 

#recuerda la prioridad de las operaciones
# 1. si existe un paréntesis se realiza primero la operación dentro
# 2. izquierda a derecha
# 3. raiz y exponencial
# 4. multiplicación y división
# 5. suma y resta
# 6. la asignación 

Op1 <- 1 + 2*3 + 3 +15/3
Op1

Op2 <- 4 - 15/3 + 3^2 + 3*sqrt(81)
Op2

Op3 <- 40 - (4+3)^2 + (10-5)/3
Op3

Op4 <- 32^5 - (3-5)*2 + 32/sqrt(64)
Op4

Op5 <- 1/(3^-3) + (8-10^2) - (25/sqrt(25))^2
Op5

# Demuestra si: El logaritmo base 10 de 20 es menor que la raíz
# cuadrada de 4. Desarrollalo en una sola linea

log10(20) < sqrt(4)

#el comando arroja que es TRUE

#desarrolla en una sola línea

1/3^-1 == 3/1^-1.3; (-2)^2 != (2)^2

#usamos el ; para poner dos comandos en una sola línea
# los resultados son TRUE y FALSE


# ----- V E C T O R E S -----

#EJHERCICIOS

#dado un vector x, escribe un código que determine si todos los 
#elementos del vector son iguales a cero utilizando la función all()

x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

all(x == 0)
#FALSE

#escribee un código que tome un vector x y devuelva TRUE si
# hay algún elemento repetido en el vector, utilizando la función any()

x <- rep(c(1,2,3,4,5), 3)
any(duplicated(x))
#arroja TRUE

#Dado un vector x, escribe una función que determine si todos
# los elementos del vector son iguales entre sí utilizando la
#función all()

x <- rep(3, 5)
all(x == x[1])

#Escribe una función que tome dos vectores y que devuelca TRUE
#si ambos vectores tienen algún elemento en común, utilizando la función any()

x <- c(5,6,7)
y <- c(3,4,5)

any(x %in% y) #el %in% revisa coincidencias

# escribe una función que tome dos vectores y que devuelva
#   TRUE si todos los elementos del vector x son mayores
# que los elementos correspondientes en el vector y, utilizando
#la función all()

x <- c(5,6,7)
y <- c(1,2,3)

all(x > y)

#dado un vector x, escribe una función que determine si todos
#los elementos del vector son menores que cero utilizando la función all()

x <- c(1,2,3)

all(x < 0)
#false

#escribe una función que tome dos vectores y que devuelva TRUE
#si al menos un elemento del vector x es mayor que los elementos
#correspondientes en el vector y, utilizando la función any()

x <- c(3,4,2)
y <- c(2,3,1)

any(x > y)

#dado un vector x, escribe una función que determine si todos
#los elementos del vector son iguales a un valor específico a 
#utilizando la función all()

x <- c(3,3,3)
all(x == 3)

#escribe una función que tome dos vectores y devuelva true si al menos un}
#elemento del vector x es menor que los elementos correspondientes en el vector y
#utilizando la función any()

x <- c(1,2,3)
y <- c(2,3,4)

any(x < y)


#EJERCICIO

#Qué función tiene los siguientes comando sd() y Quantile()

?sd 
#el ? nos habre la venta de ayuda y explica de que sirve el comando

#sd () da la desviación estandar

?quantile
#genera los cuantiles muestrales correspondientes a las probabilidades dadas

#ejercicio

edades <- c(35,35,70,17,14) #Definimos un vector llamado "edades"
nombres <- c("Jerry","Beth","Rick", "Summer","Morty") #Definimos un vector llamado "edades", del mismo tamaño que "edades"

names(edades) <- nombres #Se nombran los elementos del vector "edades"
edades

#cual es el promedio de las edades sin contar el de Beth
mean(edades[- 2])


