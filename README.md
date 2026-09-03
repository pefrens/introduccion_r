# Introducción a la Programación con R - Tidyverse

**Instructor:** [Paul Efrén Santos Andrade](https://paulefrensa.rbind.io) // 2026

---

## Descripción

Curso introductorio de programación en R con énfasis en el ecosistema **Tidyverse** y en el análisis de datos espaciales vectoriales con **sf**. El curso cubre el ciclo completo de la ciencia de datos: importar, explorar, transformar, ordenar, unir tablas y visualizar información geográfica y estadística de manera reproducible.

## Contenido del Curso

| Sesión | Tema | Diapositivas | Módulo Web |
|:------:|:-----|:-------------|:-----------|
| **0** | Bienvenida e Introducción a R | `materials/00-bienvenida-intro-r.qmd` | `modules/s00-bienvenida-intro-r.qmd` |
| **1** | Fundamentos de R y RStudio | `materials/01-fundamentals-intro-r.qmd` | `modules/s01-fundamentals.qmd` |
| **2** | Importar y Revisar Datos | `materials/02-importing-data.qmd` | `modules/s02-import-data.qmd` |
| **3** | Transformación de Datos (dplyr) | `materials/03-data-manipulation.qmd` | `modules/s03-dplyr.qmd` |
| **4** | Organización de Datos (tidyr) | `materials/04-tidying-data.qmd` | `modules/s04-tidying-data.qmd` |
| **5** | Unión de Datos (Joins) | `materials/05-joins.qmd` | `modules/s05-joins.qmd` |
| **6** | Datos Espaciales con sf | `materials/06-introduccion-datos-espaciales-sf.qmd` | `modules/s06-spatial.qmd` |
| **★** | Estilo y Theming (Complementario) | Guía web interactiva | `modules/s07-theming.qmd` |

### Temas por sesión

**Sesión 0 — Bienvenida**
- ¿Qué es la ciencia de datos?
- El ciclo de la ciencia de datos (importar, ordenar, transformar, visualizar, modelar, comunicar)
- ¿Por qué R? Filosofía y ventajas del ecosistema Tidyverse
- Herramientas del curso: R, RStudio, Quarto, Git/GitHub
- Configuración del entorno de trabajo

**Sesión 1 — Fundamentos de R**
- Tipos de datos atómicos: numérico (double, integer), carácter, lógico, factor
- Estructuras de datos: vectores, matrices, data frames, tibbles y listas
- Operadores aritméticos, lógicos y relacionales
- Funciones en R: argumentos nombrados y por defecto, ayuda integrada (`?`)
- El operador pipe nativo `|>`

**Sesión 2 — Importar y Revisar Datos**
- Lectura de archivos CSV y texto (`readr`)
- Lectura de hojas de cálculo Excel (`readxl`)
- Manejo de valores faltantes (`na`) y tipos de columnas (`col_types`)
- Limpieza y estandarización de nombres de variables con `janitor::clean_names()`
- Inspección rápida y auditoría de tablas con `glimpse()` y `summary()`

**Sesión 3 — Transformación de Datos con dplyr**
- Verbos esenciales: `filter()`, `arrange()`, `distinct()`, `mutate()`, `select()`
- Operaciones agrupadas: `group_by()` y `summarise()`
- Encadenamiento de transformaciones reproducibles con `|>`

**Sesión 4 — Organización de Datos (Tidy Data)**
- Los tres principios fundamentales de los datos ordenados (*Tidy Data*)
- Reestructuración con `pivot_longer()` y `pivot_wider()`
- Manipulación de columnas compuestas con `separate()` y `unite()`

**Sesión 5 — Unión de Datos (Joins)**
- Concepto de claves primarias y foráneas
- Mutating joins: `left_join()`, `right_join()`, `inner_join()`, `full_join()`
- Filtering joins: `semi_join()`, `anti_join()` para auditoría de inconsistencias y registros huérfanos

**Sesión 6 — Datos Espaciales con sf**
- Modelo de datos *Simple Features*: clases `sfg`, `sfc` y `sf`
- Lectura de capas vectoriales en formato GeoPackage (`DEPARTAMENTO.gpkg`) con `read_sf()`
- Inspección y transformación de sistemas de coordenadas de referencia (CRS con `st_crs()` y `st_transform()`)
- Integración fluida entre `sf`, `dplyr` y visualización básica con `geom_sf()` en `ggplot2`

**Sesión Complementaria — Estilo y Theming**
- Buenas prácticas de visualización
- Personalización de paletas de color, tipografía y componentes temáticos (`theme_*()`)

---

## Requisitos Técnicos

### Software
- **R** (versión ≥ 4.3.0 recomendada) — [cran.r-project.org](https://cran.r-project.org)
- **RStudio Desktop** (versión reciente 2023/2024+) — [posit.co/download/rstudio-desktop](https://posit.co/download/rstudio-desktop/)
- **Quarto CLI** — [quarto.org](https://quarto.org)
- **Rtools** (solo en Windows, correspondiente a la versión de R instalada) — [cran.r-project.org/bin/windows/Rtools](https://cran.r-project.org/bin/windows/Rtools/)

### Paquetes de R

```r
# Paquetes principales del curso
paquetes <- c(
  "tidyverse", # Colección central (readr, dplyr, tidyr, ggplot2, tibble, etc.)
  "janitor",   # Limpieza y auditoría de nombres
  "readxl",    # Lectura de archivos Excel
  "writexl",   # Exportación a Excel
  "sf"         # Simple Features para análisis geoespacial
)

install.packages(paquetes)
```

---

## Estructura del Repositorio

```
.
├── _quarto.yml          # Configuración del sitio web del curso
├── index.qmd            # Portada principal del sitio
├── prework.qmd          # Guía detallada de requisitos e instalación
├── resources.qmd        # Recursos de consulta y libros recomendados
├── license.qmd          # Términos de licencia
├── modules/             # Páginas web individuales de cada módulo (s00 a s07)
├── materials/           # Diapositivas interactivas en Reveal.js y scripts
│   ├── data/            # Insumos de datos para las presentaciones
├── data/                # Datasets de trabajo para los estudiantes
└── docs/                # Sitio web compilado (HTML / CSS / JS)
```

## Datos del Curso

Los datasets de práctica están disponibles en la carpeta `data/`:
- `catalogo_planes.csv` / `catalogo_planes.xlsx`: Registro de planes territoriales y urbanos.
- `poblacion_peru.csv`: Estadísticas de población por departamento.
- `DEPARTAMENTO.gpkg`: Capa geográfica departamental del Perú.
- `ciudades_1.csv`: Conjunto de ciudades para validación de importación.

---

## Contacto

**Paul Efrén Santos Andrade**
- 🌐 [paulefrensa.rbind.io](https://paulefrensa.rbind.io)
- 🐦 [@PaulEfrenSantos](https://twitter.com/PaulEfrenSantos)
- 💻 [github.com/PaulESantos](https://github.com/PaulESantos)

---

Este material se distribuye bajo la licencia [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).
