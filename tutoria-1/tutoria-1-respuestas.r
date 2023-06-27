
rm(list = ls())

# Este es un comentario

#* Con asterisco: comentarios continuos
#* (Continuación)

# Ctrl + Shift + R para generar "headers" ----------------------------------

# Ctrl + Shift + O para ver un otline


# 1. Objetos en R ---------------------------------------------------------

# Con el signo <- asignamos un valor o estructura a un objeto

pi <- 3.14
pi = 3.14
radio <- 2

radio*pi**2

##* No puede empezar con un número.
##* No puede tener espacios entre medio.
##* Evitar los carácteres extraños como tildes y ñ.
##* Estilos:
##* - snake_case
##* - camelCase
##* - PascalCase

area_circulo <- radio*pi**2


# 2. Fijar el directorio --------------------------------------------------

##* ¡Comencemos a trabajar!
##* Para tener un directorio de referencia en R debes fijar el directorio.

getwd()
setwd("/home/sofia/Escritorio")


# 3. Operaciones ----------------------------------------------------------

## 3.1. Aritméticas --------------------------------------------------------

a <- 1
b <- 2

a + b  ## R como calculadora
a - b
a / b
a*b
a**2

# Paréntesis
(a + b) / b

a %% b # módulo
a %/% b # div. entera

## 3.2. Lógicas ------------------------------------------------------------

# Operadores
a > b
a == b
a != b

# Álgebra de eventos
c <- a > b
d <- a != b

c|d
c&d


# 4. Tipo de datos --------------------------------------------------------

string <- "Hola, ¿Qué tal?"
entero <- 1L
numerico <- 0.5
booleano <- TRUE
perdido <- NA
no_existe <- NULL


## 4.1. Comprobar el tipo de dato ------------------------------------------

# Obtener clase
class(string)
typeof(string)

# Confirmar clase
is.character(string)
is.numeric(string)

## 4.2. Transformación y coerción ------------------------------------------

as.character(entero)

# 5. Estructuras de datos -------------------------------------------------

##* Vectores. Arreglo de valores de 1 dimensión. Solo puede tener datos de un tipo de valor.
##* Matrices. Estructura de 2 dimensiones. Solo puede tener datos de un tipo de valor.
##* DataFrames. Es lo que reconoce R como bases de datos. Son relacionales y puede contener variables de distinto tipo.
##* Listas. Conjunto que pueden contener diferentes objetos sin importar su estructura.
##* Arrays. Conjunto que pueden contener dferentes objetos, pero solo puede tener un único tipo de valor.


## 5.1. Vectores -----------------------------------------------------------

## Con la función c(), podemos elaborar un vector a mano

c(1, 2, 3)

vector_1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector_2 <- c("a", "b", "c")


## Concatenar dos vectores

vector_m <- rep(1, times = 5)
vector_n <- rep(0, times = 5)

c(vector_m, vector_n)

# Una dimensión
length(vector)

# Índice
vector[2]
vector[2] <- 3
vector
vector[1:3]

# Secuencia
secuencia_2 <- seq(from = 1, to = 5, by = 0.1)
secuencia_repetitiva <- rep(5, 10)
x <- rnorm(100, mean = 4, sd = 1.2)

1:5
5:1
-10:10

secuencia <- 1:5
secuencia_2 <- seq(from = 1, to = 5, by = 0.1)

secuencia ; secuencia_2

hist(x)



### 5.1.1. Operaciones con vectores -----------------------------------------

## Aritméticas
(vector_1 <- -1:-3)

vector_1 + 1
vector_1 / 2

vector_2 <- 1:3

vector_1 ; vector_2

vector_1 + vector_2
vector_1 / vector_2

## Lógicas
vector_2
vector_2 > 2
vector_2 >= 2
vector != 3

# Clase de los datos en el vector
vector_3 <- c(1, 2, 3, 4)
class(vector_3)

vector_4 <- c(1, 2, 3, "Hola")
vector_4

class(vector_4)

### *Coerción: ejemplos con vectores -----------------------------------------

## LÓGICO > ENTERO > NUMÉRICO > TEXTO

# Explícita
vector_bool <- c(TRUE, FALSE)
vector_bool

vector_enteros <- as.numeric(vector_bool)
vector_enteros

as.character(vector_enteros)
as.character(vector_bool)

# Implícita
## - Objetos con restricciones (vectores)
c(1, 2, 3, "Hola")
c(1, 2, 3, TRUE)

## - Estructura
vector_a <- c(1, 2, 3)
vector_b <- c(1, 2, 3, 4)

vector_c <- vector_a + vector_b

vector_c


## 5.2. Matrices -------------------------------------------------------------

## Conjunto de datos ordenados en dos dimensiones. Solo un tipo de dato.

# Matriz de un vector sin dimensiones
matriz_0 <- matrix(c(1, 2, 3, 4, 5, 6))
matriz_0

matriz_1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2)
matriz_1

matriz_1 <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 2)
matriz_1

matriz_1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3)
matriz_1

matriz_1 <- matrix(1:6, ncol = 3)
matriz_1

(matriz_2 <- matrix(c(1, 2, 3, 4, 5, 6), ncol = 3, byrow = TRUE))


# Vectores como columnas
vector_1 <- 1:5
vector_2 <- rep(1, times = 5)
vector_3 <- seq(2, 10, by = 2)

vector_1*2

matriz_3 <- cbind(vector_1, vector_2, vector_3)

# Vectores como filas
matriz_4 <- rbind(vector_1, vector_2, vector_3)

## ¿Puedo unir dos matrices, por columnas o por filas?


### 5.2.1. Dimensionalidad e índices -----------------------------------------

# Dimensiones: Aij
# POr convención: primero va la fila,luego la columna.
dim(matriz_3)

# Índice
matriz_3[1, 1]
matriz_3[2,]
matriz_3[, 2]

matriz_3[, 2] <- rep(2, 5)
matriz_3

## Propuesto, ¿cómo añadir un vector_4 que sea el resultado de vector_3 - 1?

### Coerción: ejemplos con matrices -----------------------------------------

# Coerción implícita

## Tipo de dato
matrix(c(1, 2, 3, TRUE), ncol = 2)
matrix(c(1, 2, 3, "Hola"), ncol = 2)

vector_a1 <- 5:3
vector_a2 <- c("Chile", "Argentina", "Bolivia")

cbind(vector_a1, vector_a2)

## Estructua
matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 3)

vector_a1 <- c(1, 2, 3)
vector_a2 <- c(1, 2, 3, 4)

cbind(vector_a1, vector_a2)

## Operaciones entre matrices -----------------
matriz_a <- matrix(1:4, ncol = 2)
matriz_b <- matrix(1:4, ncol = 2)

matriz_a + matriz_b
matriz_a * matriz_b
matriz_a %*% matriz_b

diag(matriz_a)



## 5.3. DataFrames ---------------------------------------------------------

##* Es lo que R reconoce como Base de Datos. Es un marco de datos relacional
##* que tiene un conjunto de variables.


### 5.3.1. Generación manual ------------------------------------------------

data <- data.frame(edad = c(24, 60, 15, 31, 56, 70, 23, 44),
                   sexo = c(1, 0, 0, 1, 0, 0, 1, 1),
                   nivel_educacional = c("Básica", "Universitaria", 
                                         "Media", "Posgrado", "Posgrado", 
                                         "Básica", "Media", "Posgrado"))


### 5.3.2. Importación de la base de datos ----------------------------------

library(readxl)
data <- read_excel("datos.xlsx")


## 5.3.3. Exploración y manipulación ------------------------------------------------------

dim(data) # Las filas y columnas tienen interpretación
nrow(data)
ncol(data)
data

# Primeras o últimas 5 observaciones
head(data)
tail(data)

# Observar contenidos
str(data)

## Seleccionar, eliminar y añadir* ####
data[, c(1,2)]
data[, 1]
data[, -1]
data$edad

x <- data$edad
y <- data$nivel_educacional

data$agno <- rep(2023, 8)

data

# Añadir (al principio, la variable es "NULL", no existe)
data$nacimiento <- data$agno - data$edad

data

## Tipos de variables: verificación y corrección
str(data)
data$sexo <- factor(data$sexo, labels = c("mujer", "hombre"), levels = c(0, 1))
data$sexo

str(data)

data$nivel_educacional <- factor(data$nivel_educacional)
str(data)



### 3.3.4. Filtros ----------------------------------------------------------
data[data$edad > 18, ]
data[data$edad > 30 & sexo == "hombre", ]

# 5.4. Otras estructuras --------------------------------------------------

## Listas
lista <- list(vector_1, matriz_1, data)

## Arreglos (array). Generalización de la matriz
array(1:8, c(4,4))
array(1:12, c(2,3,2))

# 6. Funciones de estadística ---------------------------------------------

mean(data$edad)
sd(data$edad)
var(data$edad)

table(data$sexo)
table(data$nivel_educacional)

library(janitor)
tabyl(data$sexo)
tabyl(data$nivel_educacional)

summary(data) # Observen como cambia según el tipo de variable


# Cuidado con los NAs
data$dummy_variable <- c(rep(1,7), NA)

data

mean(data$dummy_variable)
mean(data$dummy_variable, na.rm = TRUE)


# 7. Documentación ------------------------------------------------------
?mean
help(mean)
args(mean)
example(mean)

example(plot)

# 8. Consideraciones finales ----------------------------------------------

##* Lógica vertical del flujo de ejecusión
##* Trabajar en proyectos o fijar el directorio
##* Comentarios descriptivos
##* Nombres de objetos descriptivos



