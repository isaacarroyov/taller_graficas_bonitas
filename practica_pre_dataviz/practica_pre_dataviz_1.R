# ------ Práctica - Visualización 1: Artistas en Estados Unidos ------

# ------ Cargar librerías ------

# ------ Cargar y conocer los datos ------
artistas_usa <- read_csv("https://raw.githubusercontent.com/isaacarroyov/taller_graficas_bonitas/main/practica_pre_dataviz/data/artists.csv")

# Ver las primeras 5 filas

# ------ Conociendo la estructura de los datos (glimpse) ------

# ------ Conociendo la estrucura de los datos (str) ------

# ------ Seleccionar las columnas que nos interesan ------

# ------ Renombrar las columnas ------

# ------ Saber cuántos grupos raciales hay ------

# Extraer valores (pull)

# Valores únicos (unique)

# Conocer frecuencia de categorías (opcional hacer)

# ------ Filtrar por grupos raciales de interés ------

# ------ Crear y modificar columnas (mutate + case_when) ------

# ------ Porcentaje de trabajadores de cada expresión artística de cada estado de los diferentes grupos raciales ------

# ------ Agrupar ------

# Agrupar por los estados de (EUA)

# ------ Resumir ------

# Resumir la información del número de trabajadores artistas

# ------ Agrupar y resumir ------

# ------ Agrupar con group_by() (1 columna) y summarise() ------
# Encontrar el promedio de trabajadores artistas por cada estado de Estados Unidos


# ------ Agrupar con group_by() (2 columnas) y summarise() ------
# Encontrar el promedio de trabajadores artistas de los diferentes grupos raciales por cada estado de Estados Unidos.


# ------ Agrupar con group_by() (3 columnas) y summarise() ------
# Encuentra el porcentaje de trabajadores de cada expresión artística de cada estado de los diferentes grupos raciales. Guardar el resulado en una variable llamada df_dataviz
