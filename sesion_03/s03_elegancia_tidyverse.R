# ------ Sesion 03: La elegancia de Tidyverse ------
# https://www.tidyverse.org


# ------ CARGAR LOS BIBLIOTECAS/PAQUETERIAS ------
# library(tidyverse)
library(dplyr)
library(tidyr)
library(readr)
library(stringr)
library(lubridate)

# ------ CARGAR LOS DATOS INICIALES------
data_nyt_bestsellers <- read_csv("https://raw.githubusercontent.com/isaacarroyov/taller_graficas_bonitas/main/data/nyt_bestsellers-clean.csv")


# ------ CONOCER DATA.FRAME O TIBBLE ------


# ------ dplyr::select ➡️ Seleccionar columnas/variables ------


# ------ Seleccionar author, title y price.numberDouble ------


# ------ Ejercicio con dplyr::select ------


# ------ dplyr::mutate ➡️ Crear nuevas columnas ------


# ------ Crear columna que tome en cuenta la inflación ------


# ------ Crear columna que tome en cuenta la inflación ------


# ------ Ejercicio con dplyr::mutate ------


# ------ tidyr::separate ➡️ Generar columnas de información de texto ------


# ------ Separar nombre y apellido de la columna author ------


# ------ dplyr::case_when ➡️ Crear nueva columna de acuerdo a condiciones ------


# ------ Clasificar precios de libros ------


# ------ dplyr::rename ➡️ Renombrar columnas ------


# ------ Cambio a nombres más claros ------


# ------ dplyr::filter ➡️ Filtrar de acuerdo a condiciones ------


# ------ Libros con más de 14 semanas en la lista del ranking ------


# ------ Filtrar por apellidos ------


# ------ Por palabras clave en las descripciones ------


# ------ Por palabras clave y ranking semanal ------


# ------ Cambio de dataset ------
data_mortality_infants <- read_csv("https://raw.githubusercontent.com/isaacarroyov/data_visualization_practice/master/data/causes-of-death-in-children-under-5.csv")

# ------ Ejercicio: Preparación de los datos ------


# ------ dplyr::summarise ➡️ Resumir información de columnas ------


# ------ Obtener las estadísticas básicas del conjuntos de datos ------


# ------ dplyr::group_by ➡️ Agrupar por categorías ------


# ------ Cambio o diferencia de fallecimientos con respecto al año anterior en cada uno de los continentes ------


# ------ Ejercicio con `dplyr::group_by` y `dplyr::summarise` ➡️ media y desviación estándar de `df_mi` por continente ------


# ------ dplyr::lubridate ➡️ manejo de fechas ------
data_vuelos_tt <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-07-12/flights.csv")
glimpse(data_vuelos_tt)

# ------ Seleccionar y renombrar columnas ------


# ------ Formato e información de fechas con ymd(), year(), month(), entre otras ------


# ------ lubridate + dplyr::mutate ------


# ------ Agrupar y resumir los vuelos del mes por cada país (1a manera) ------


# ------ lubridate::floor_date() ➡️ Agrupar y resumir los vuelos del mes por cada país (2a manera) ------


# ------ Ejemplo de wide format: Cargamos más datos ------
data_motomami <- read_csv("https://raw.githubusercontent.com/isaacarroyov/30DayChartChallenge/main/2022/data/ROSALIA_MOTOMAMI_Audio_Features.csv")
data_motomami

# ------ Ejemplo de long format: Datos mensuales del número de los vuelos de un país de Europa (Italia) df_flies ------


# ------ tidyr::pivot_longer ➡️ De wide a long format (Ejemplo) ------


# ------ tidyr::pivot_wider ➡️ De long a wide format (Ejemplo) ------