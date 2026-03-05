library(dplyr)
library(tidyverse)
library(ggplot2)
library(readr)


#Tenemos una base de datos en línea se tiene que descargar
url_tinto  <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv"
url_blanco <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv"


#ahora designamos como tiene que descargarlo y lo tenga que leer
vino_tinto  <- read_delim(url_tinto,  delim = ";", show_col_types = FALSE)
vino_blanco <- read_delim(url_blanco, delim = ";", show_col_types = FALSE)

# Añadimos columna "tipo" para identificarlos al unirlos
vino_tinto  <- mutate(vino_tinto,  tipo = "tinto")
vino_blanco <- mutate(vino_blanco, tipo = "blanco")

# bind_rows() apila las dos tablas (como pegar una encima de la otra)
vinos <- bind_rows(vino_tinto, vino_blanco)

glimpse(vinos)

#Descargamos la segunda base de datos 

salud <- read_csv("01_RawData/dataset_categorical_NA.csv", show_col_types = FALSE)

glimpse(salud)


#PIPE |> o %>%

#observamos como filtra el %>% 

vinos |> #de la base vinos
  filter(tipo == "tinto") |> #filtra por tinto
        filter(quality >= 7) |> #Filtra los que tengas calidad mayor a 7
              select(tipo, quality, alcohol) |> #selecciona por tipo, calidad y alcohol
                    arrange(desc(alcohol)) |> #Ordena las final en orden descendiente por alcohol
  head(8)         #muestra los primeros 8


# Quedarnos solo con vinos tintos
vinos %>% 
        filter(tipo == "tinto")

salud %>% 
        filter(BMI >= 30)

vinos %>% 
        filter(quality >= 9)

salud %>% 
      filter(Cholesterol >= 50)


#dos condiciones con OR ( | )

# Vinos que tengan quality == 9 O alcohol > 14

vinos %>% 
filter( quality == 9 | alcohol > 14) %>% 
  select(tipo, quality, alcohol) %>% 
  head(8)

# Vinos de calidad 8 o 9
#nos ahorramos poner un &
filter(vinos, quality %in% c(8, 9)) |>
  select(tipo, quality, alcohol) |>
  head(8)

#funciona tambien para valores categoricos

# Participantes de zona urbana o suburbana
filter(salud, ResidenceType %in% c("Urbano", "Suburbano")) |>
  count(ResidenceType)


#filtrar por rango
# Vinos con pH entre 3.0 y 3.1 (incluyendo los extremos)
# si queremos descartar los extremos usamos un & mejor para descartar
vinos %>% 
filter(between(pH, 3.0, 3.1)) |>
  select(tipo, pH, quality) |>
  head(6)


#Maneja las NAs en la base de datos

# Participantes sin dato de edad O menores de 30
filter(salud, is.na(Age) | Age < 30) |>
  select(ID, Age, SmokingStatus)

# Vinos tintos de calidad alta, ordenados por alcohol
vinos |>
  filter(tipo == "tinto") |>
  filter(quality >= 7) |>
  select(tipo, quality, alcohol, pH) |>
  arrange(desc(alcohol)) %>% #por default da en orden ascendente si lo queremos descendente tenemos que aclararlo 
  head(8)

vinos %>% 
    filter(tipo == "blanco") %>% 
    filter(quality <= 5) %>% 
count()

vinos %>% 
  
    filter(tipo == "blanco" & quality <=5) %>% 
  count()

vinos %>% 
  filter(tipo == "tinto", alcohol > mean(vinos$alcohol))

salud %>% 
  filter(SmokingStatus == "Ex-fumadora" & ResidenceType == "Urbano") %>% 
count()

salud %>% 
  filter(StressLevel > 80) %>% 
  count(SmokingStatus, sort = TRUE)


#filter toma filas select toma columnas

vinos %>% 
  select(where(is.character)) %>% 
  head(5)

vinos %>% 
  select(contains("acid"))

salud %>% 
  select(ID, 
         Age, 
         contains("Circumference"), 
          'cintura' = WaistCircumference)

salud %>% 
  filter(ResidenceType == "Rural") %>% 
        select(ID, Age, BMI, SmokingStatus)

#arrange es igual a sort u order()

vinos %>% 
  arrange(desc(pH)) %>% 
  select(pH, quality, tipo)

salud %>% 
  arrange(desc(Glucose)) %>% 
  select(ID, Age, SmokingStatus, Glucose) %>% 
head(5)

vinos %>% 
  arrange(desc(quality), `volatile acidity`) %>% 
    filter(tipo == "blanco") %>% 
  head(10)


#Crear multiples columnas a la vez 

# Guardamos el dataset de vinos con columnas nuevas
vinos <- vinos %>%  #le decimos que modifique el data frame
  mutate(
    calidad_alta   = ifelse(quality >= 7, "Sí", "No"),
    alcohol_c      = alcohol - mean(alcohol, na.rm = TRUE),
    proporcion_so2 = `free sulfur dioxide` / `total sulfur dioxide`
  )

vinos %>%  #aquí que ya nos de el dataframe modificado
  select(tipo, quality, calidad_alta, alcohol, alcohol_c, proporcion_so2) |>
  head(5)


