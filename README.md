# Introducción a la Programación con R - Tidyverse

**Instructor:** [Paul Efren Santos Andrade](https://paulefrensa.rbind.io) // Febrero 2026

---

## Descripción

Curso introductorio de programación en R con énfasis en el ecosistema Tidyverse. El curso cubre el ciclo completo de la ciencia de datos: importar, ordenar, transformar y visualizar datos, con una introducción al análisis espacial.

## Contenido del Curso

| Sesión | Tema | Material |
|--------|------|----------|
| 0 | Bienvenida e Introducción a R | `materials/00-bienvenida-intro-r.qmd` |
| 1 | Fundamentos de R y RStudio | `materials/01-fundamentals-intro-r.qmd` |
| 2 | Importar y Revisar Datos | `materials/02-importing-data.qmd` |
| 3 | Transformación de Datos (dplyr) | `materials/03-data-manipulation.qmd` |
| 4 | Organización de Datos (tidyr) | `materials/04-tidying-data.qmd` |
| 5 | Unión de Datos (Joins) | `materials/05-joins.qmd` |

### Temas por sesión

**Sesión 0 — Bienvenida**
- ¿Qué es la ciencia de datos?
- El ciclo de la ciencia de datos
- ¿Por qué R? Ventajas del ecosistema tidyverse
- Herramientas del curso: R, RStudio, Quarto, Git/GitHub
- Instalación y configuración del entorno

**Sesión 1 — Fundamentos de R**
- Tipos de datos: numérico, carácter, lógico, factor
- Estructuras de datos: vectores, matrices, data frames, tibbles, listas
- Operadores lógicos y booleanos
- Funciones en R: sintaxis y argumentos
- El operador pipe `|>`
- Introducción a objetos `sf` para datos espaciales

**Sesión 2 — Importar y Revisar Datos**
- Leer datos desde CSV, Excel y archivos de texto
- Manejo de valores faltantes y tipos de datos
- Limpieza de nombres de variables con `janitor`
- Exploración inicial de datos importados
- Trabajar con múltiples archivos
- Guardar datos procesados

**Sesión 3 — Transformación de Datos**
- Verbos de `dplyr`: `filter()`, `arrange()`, `distinct()`, `mutate()`, `select()`, `summarise()`, `group_by()`
- Comparación base R vs. dplyr
- Agrupación y resumen de datos

**Sesión 4 — Organización de Datos (Tidy Data)**
- Principios de datos ordenados (tidy data)
- `pivot_longer()`: convertir a formato largo
- `pivot_wider()`: convertir a formato ancho
- `separate()` y `unite()`: separar y unir columnas

**Sesión 5 — Unión de Datos**
- Claves primarias y foráneas
- Mutating joins: `left_join()`, `right_join()`, `inner_join()`, `full_join()`
- Filtering joins: `semi_join()`, `anti_join()`
- Non-equi joins

## Módulos del Sitio Web

Los módulos en `modules/` corresponden al sitio web del curso:

| Módulo | Descripción |
|--------|-------------|
| `s00-bienvenida-intro-r.qmd` | Página de bienvenida |
| `s01-fundamentals.qmd` | Fundamentos de R |
| `s03-import-data.qmd` | Importación de datos |
| `s05-dplyr.qmd` | Manipulación con dplyr |
| `s07-theming.qmd` / `s07-tidying-data.qmd` | Organización de datos |
| `s08-spatial.qmd` | Datos espaciales con sf |

## Requisitos

### Software

- **R** ≥ 4.5.2 — [cran.r-project.org](https://cran.r-project.org)
- **RStudio** ≥ 1.1.401 — [posit.co/download/rstudio-desktop](https://posit.co/download/rstudio-desktop/)
- **Rtools 45** (solo Windows) — [cran.r-project.org/bin/windows/Rtools](https://cran.r-project.org/bin/windows/Rtools/)

### Paquetes de R

```r
# Tidyverse y manipulación de datos
install.packages(c(
  "tidyverse",  # Colección completa (dplyr, ggplot2, tidyr, readr, etc.)
  "janitor",    # Limpieza de nombres
  "here",       # Rutas reproducibles
  "readxl",     # Leer Excel
  "writexl",    # Escribir Excel
  "visdat",     # Visualizar datos
  "nycflights13" # Datos de ejemplo para joins
))

# Paquetes espaciales
install.packages(c(
  "sf",        # Simple Features
  "terra",     # Datos ráster
  "mapview",   # Visualización interactiva
  "leaflet",   # Mapas web
  "tmap"       # Mapas temáticos
))
```

## Datos del Curso

Los datos de ejemplo se encuentran en `data/` y `materials/data/`:

- `poblacion_peru.csv` — Datos de población de Perú
- `ciudades_1.csv` — Ciudades del mundo
- `indicadoresCPV2017.xlsx` — Indicadores del Censo 2017
- `reporte_centro_poblado_ANTA.*` — Datos de centros poblados de Anta
- `reporte_centro_poblado_HUAROCONDO.*` — Datos de centros poblados de Huarocondo
- `distritos_cusco.*` — Datos espaciales de distritos de Cusco (shapefile y gpkg)
- `DISTRITO.gpkg` — Capa de distritos (GeoPackage)

## Recursos de Referencia

- [R for Data Science](https://r4ds.hadley.nz/) (en inglés) / [Versión en español](https://es.r4ds.hadley.nz/)
- [Geocomputation with R](https://r.geocompx.org/)
- [RStudio Cheatsheets](https://posit.co/resources/cheatsheets/)
- [RStudio Community](https://community.rstudio.com/)

## Contacto

**Paul Efren Santos Andrade**

- 🌐 [paulefrensa.rbind.io](https://paulefrensa.rbind.io)
- 🐦 [@PaulEfrenSantos](https://twitter.com/PaulEfrenSantos)
- 💻 [github.com/PaulESantos](https://github.com/PaulESantos)

---

![](https://i.creativecommons.org/l/by/4.0/88x31.png) Este trabajo está bajo una licencia [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/).
