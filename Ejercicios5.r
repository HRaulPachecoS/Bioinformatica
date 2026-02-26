#Ejercicio 1

library(readxl)

datos <- read_excel("~/Documents/Doctorado Biosistemas/3er semestrre/Bioinformatica/Ejercicios5.xlsx", sheet = "Ejercicio 1")

df <- data.frame(datos)

mean(df$TasadeCrecimiento)
#1.281

sd(df$TasadeCrecimiento)
#0.5211

#Ejercicio 2

datos2 <- read_excel("~/Documents/Doctorado Biosistemas/3er semestrre/Bioinformatica/Ejercicios5.xlsx", sheet = "Ejercicio 2")

df2 <- data.frame(datos2)
tapply(df2$Resistencia, 
       df2$Antibiotico, 
       mean) * 100
# amoxi azitro  cipro levo  moxi
# 60    40      40    20    20


