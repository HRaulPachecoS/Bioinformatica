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

#eliminamos la edad de Morty
y <- edades[-5]
y
Ordenados <- y[order(y, decreasing = TRUE)] #Usamos los corchetes para extraer todo los datos con nombres y números
Ordenados

#¿Hay alguna edad que sea mayor de 75?

any(edades > 75)
#FALSE

#menor de 12
any(edades < 12)
#False

#Entre 12 y 20

any(20 <= edades & edades >= 12)
#true

#Genera un vector de 10 edades

edades <- c(22, 24, 21, 23, 25, 22, 24, 26, 23, 21)

#Asigna nombres
nombres <- c("Carlos", "Marta", "luis", "Sofía", "Diego", "Susana", "Laura", "Manuel", "Paulina", "Juan")
names(edades) <- nombres
edades

#Encuentra el mínimo,máximo, media, mediana, la desviación estándar, 
#la longitud del vector y selecciona sólo los elementos impares.

min(edades)
max(edades)
mean(edades)
median(edades)
sd(edades)
length(edades)

#elimina el max. y el min. y genera un histograma con el vector resultante
y <- edades[-c(2,4,6,8,10)]
EdadesNuevo <- edades[-c(3,7)]
EdadesNuevo
hist(EdadesNuevo)

#Crea un vector de caracteres con diez nombres de especies 
#y asocialo con su número de acceso de NCBI para su genoma en nucleótidos.

accesos_ncbi <- c(
  "NC_000913.3",  # Escherichia coli
  "NC_002695.2",  # Bacillus subtilis
  "NC_004431.1",  # Salmonella enterica
  "NC_002516.2",  # Mycobacterium tuberculosis
  "NC_003197.2",  # Streptococcus pneumoniae
  "NC_000962.3",  # Mycobacterium leprae
  "NC_002971.4",  # Helicobacter pylori
  "NC_006273.2",  # Pseudomonas aeruginosa
  "NC_003210.1",  # Vibrio cholerae
  "NC_002505.1"   # Staphylococcus aureus
)

Nombres <- c(
  "Escherichia_coli",
  "Bacillus_subtilis",
  "Salmonella_enterica",
  "Mycobacterium_tuberculosis",
  "Streptococcus_pneumoniae",
  "Mycobacterium_leprae",
  "Helicobacter_pylori",
  "Pseudomonas_aeruginosa",
  "Vibrio_cholerae",
  "Staphylococcus_aureus"
)

names(accesos_ncbi) <- Nombres
accesos_ncbi


#Ejercicios

#Genera un vector con el nombre de 10 virus
virus <- c(
  "Norovirus",
  "Rotavirus_A",
  "Astrovirus",
  "Adenovirus_F",
  "Sapovirus",
  "Enterovirus_71",
  "Echovirus",
  "Coxsackievirus_A",
  "Coxsackievirus_B",
  "Calicivirus"
)
#Asocia esos nombres con su número de acceso en NCBI
accesos_virus_gi <- c(
  "NC_001959.2",  # Norovirus GI
  "NC_001543.1",  # Rotavirus A
  "NC_002645.1",  # Astrovirus
  "NC_001612.1",  # Adenovirus F
  "NC_001846.1",  # Sapovirus
  "NC_004148.1",  # Enterovirus 71
  "NC_001422.1",  # Echovirus
  "NC_001430.1",  # Coxsackievirus A
  "NC_001472.1",  # Coxsackievirus B
  "NC_001344.1"   # Calicivirus
)
names(accesos_virus_gi)<- virus
accesos_virus_gi

#Genera otro vector que contega los tamaños en pb y los nombres

tam_genoma <- c(
  Norovirus = 7500,
  Rotavirus_A = 18500,
  Astrovirus = 6800,
  Adenovirus_F = 36000,
  Sapovirus = 7700,
  Enterovirus_71 = 7400,
  Echovirus = 7500,
  Coxsackievirus_A = 7400,
  Coxsackievirus_B = 7400,
  Calicivirus = 8200
)

#Determina cuáles son mayores de 300 bp
tam_genoma[tam_genoma > 300]

#Asocia un subconjunto de vectores que sean mayores (menores a 300 bp) y mayores (mayores a 300 bp)

menores_300 <- tam_genoma[tam_genoma < 300]
mayores_300 <- tam_genoma[tam_genoma > 300]

menores_300
mayores_300


#Haz un histograma con los tamaños de todos

hist(tam_genoma)

#Dibuja un boxplot con los tamaños de todos.
#Pon en el eje los nombres de todos.

boxplot(
  tam_genoma,
  main = "Boxplot del tamaño de genomas virales",
  ylab = "Tamaño del genoma (pb)",
  las = 2
)
#No se podría poner el nombre de todos porque el boxplot genera una sola caja



