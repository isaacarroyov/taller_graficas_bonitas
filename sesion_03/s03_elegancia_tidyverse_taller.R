# ------ Sesion 03: La elegancia de Tidyverse ------
# https://www.tidyverse.org

# Instalar paqueterias/bibliotecas
install.packages("tidyverse")
install.packages("lubridate")

# ------ CARGAR LOS BIBLIOTECAS/PAQUETERIAS ------
# library(tidyverse)
library(dplyr)
library(tidyr)
library(readr)
library(stringr)
library(lubridate)

# ------ CARGAR LOS DATOS INICIALES------
data_nyt_bestsellers <- read_csv("https://raw.githubusercontent.com/isaacarroyov/taller_graficas_bonitas/main/data/nyt_bestsellers-clean.csv")
head(data_nyt_bestsellers, 5)

# ------ CONOCER DATA.FRAME O TIBBLE ------
names(data_nyt_bestsellers)

glimpse(data_nyt_bestsellers)

str(as.data.frame(data_nyt_bestsellers))

# ------ dplyr::select ➡️ Seleccionar columnas/variables ------
# ------ Seleccionar author, title y price.numberDouble ------
data_nyt_bestsellers %>%
  select(author, title, price.numberDouble)

# ------ Ejercicio con dplyr::select ------
df_nyt_original <- data_nyt_bestsellers %>%
  select(author, title, description, publisher, rank.numberInt,
         weeks_on_list.numberInt, price.numberDouble)
# Ver el data frame
glimpse(df_nyt_original)

# ------ dplyr::mutate ➡️ Crear nuevas columnas ------
# ------ Crear columna que tome en cuenta la inflación ------
df_nyt_original_ajustePrecio <- df_nyt_original %>% 
  mutate(precio_inflacion = price.numberDouble * 1.085)

# ------ Ejercicio con dplyr::mutate ------
df_nyt_original_ajustePrecio <- df_nyt_original_ajustePrecio %>%
  mutate(precio_mxn =  precio_inflacion * 20)

# Ver los 3 precios
df_nyt_original_ajustePrecio %>%
  select(price.numberDouble, precio_inflacion, precio_mxn) %>%
  head(5)

# ------ tidyr::separate ➡️ Generar columnas de información de texto ------
# ------ Separar nombre y apellido de la columna author ------
df_nyt_original_ajustePrecio_autorxs <- df_nyt_original_ajustePrecio %>%
  separate(author,
           sep = ' ',
           into = c("autorx_nombre","autorx_apellido"),
           extra = "merge"
           )

# Ver el resultado
df_nyt_original_ajustePrecio_autorxs %>% glimpse()

# ------ dplyr::case_when ➡️ Crear nueva columna de acuerdo a condiciones ------
# ------ Clasificar precios de libros ------
df_nyt_original_ajustePrecio_autorxs_categorias <- df_nyt_original_ajustePrecio_autorxs %>%
  mutate(categoria_precio = case_when(
    precio_mxn < 520 ~ "Se puede pagar",
    precio_mxn > 520 & precio_mxn < 580 ~ "Ya se empieza a poner caro",
    T ~ "A caso vuela?"))
# Ver las primras lineas
df_nyt_original_ajustePrecio_autorxs_categorias %>%
  select(precio_mxn, categoria_precio) %>%
  head(8)

# ------ dplyr::rename ➡️ Renombrar columnas ------
# ------ Cambio a nombres más claros ------
df_nyt_renombrado <- df_nyt_original_ajustePrecio_autorxs_categorias %>%
  rename(# nombre_nuevo = nombre_viejo
    descripcion = description,
    titulo_libro = title,
    editorial = publisher,
    rank_lista = rank.numberInt,
    semanas_en_lista = weeks_on_list.numberInt) %>%
  # Vamos a quedarnos con los siguientes
  select(autorx_nombre, autorx_apellido, titulo_libro, descripcion,
         editorial, rank_lista, semanas_en_lista, precio_mxn,
         categoria_precio)

glimpse(df_nyt_renombrado)

# ------ dplyr::filter ➡️ Filtrar de acuerdo a condiciones ------
# ------ Libros con más de 14 semanas en la lista del ranking ------
df_nyt_renombrado %>%
  filter(semanas_en_lista > 14)

# ------ Filtrar por apellidos ------
df_nyt_renombrado %>%
  filter(autorx_apellido %in% c("Meyer", "King"))

# ------ Por palabras clave en las descripciones ------
df_nyt_renombrado %>%
  filter(str_detect(descripcion, "woman|child")) %>%
  select(titulo_libro, descripcion)

# ------ Por palabras clave y ranking semanal ------
df_nyt_renombrado %>%
  filter(str_detect(descripcion, "woman|child"),# Primer filtro
         semanas_en_lista >= 10 # Segundo filtro
  ) %>%
  select(autorx_apellido, titulo_libro, descripcion, semanas_en_lista)

# ------ Cambio de dataset ------
data_mortality_infants <- read_csv("https://raw.githubusercontent.com/isaacarroyov/data_visualization_practice/master/data/causes-of-death-in-children-under-5.csv")

# ------ Ejercicio: Preparación de los datos ------
vector_entity <- c("Africa", "Oceania","America", "Asia", "Europe")

df_mi <- data_mortality_infants %>%
  select(Entity, Year,
         `Deaths - Cardiovascular diseases - Sex: Both - Age: Under 5 (Number)`,
         `Deaths - Environmental heat and cold exposure - Sex: Both - Age: Under 5 (Number)`) %>%
  filter(Entity %in% vector_entity) %>%
  rename(country = Entity, date_year = Year,
         deaths_cardiovascular = `Deaths - Cardiovascular diseases - Sex: Both - Age: Under 5 (Number)`,
         deaths_env = `Deaths - Environmental heat and cold exposure - Sex: Both - Age: Under 5 (Number)`)

glimpse(df_mi)

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