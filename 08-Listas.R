# Listas, Operações com Listas e Listas Nomeadas
# Lista comporta diferentes tipos de dados e mais dimensões

# Config. o DIR de trabalho
setwd('c:/FCD/BigDataRAzure/Cap02')
getwd()

# Use list() para criar listas

# Lista de strings
lista_caracter1 = list('A','B','C')
lista_caracter1
lista_caracter2 = list(c('A','A'),'B','C')
lista_caracter2
lista_caracter3 = list(matrix(c('A','A','A','A'), nr=2), 'B', 'C')
lista_caracter3

# Lista de números inteiros
lista_inteiros = list(2,3,4)
lista_inteiros

# Lista de floats
lista_numerico = list(1.90,45.3,300.5)
lista_numerico

# Lista de números complexos
lista_complexos = list(5.2+3i, 2.4+8i)
lista_complexos

# Lista de valores lógicos
lista_logicos = list(TRUE, FALSE, FALSE)

# Listas Compostas
lista_composta1 = list('A', 3, TRUE)
lista_composta1

lista1 <- list(1:10, c('Zico', 'Ronaldo', 'Garrincha'), rnorm(10))
lista1

?rnorm #distribuição normal dos dados

# Slicing da Lista
lista1[1]
lista1[c(1,2)]
lista1[2]
lista1[[2]][1]
lista1[[2]][1] = 'Mônica'
lista1

# Para nomear os elementos - Listas Nomeadas
names(lista1) <- c('inteiros','caracteres','numericos')
lista1

vec_num <- 1:4
vec_char <- c('A','B','C','D')

# Nomear os elementos diretamente
lista2 <- list(elemento1 = 3:5, elemento2 = c(7.2,3.5))
lista2

# Trabalhando com elementos especificos da lista
names(lista1) <- c('inteiros', 'caracteres', 'numericos')
lista1

lista1$caracteres
length(lista1$inteiros)
lista1$inteiros

# Verificar o comprimento da lista
length(lista1)

# Podemos extrair um elemento específico dentro de cada nível da lista
lista1$caracteres[2]

# Mode dos elementos
mode(lista1$numericos)
mode(lista1$caracteres)

# Combinando 2 listas
lista3 <- c(lista1, lista2)
lista3

# Transformando um vetor em lista
v = c(1:3)
v
l = as.list(v)

# Unindo 2 elementos em uma lista
mat = matrix(1:4, nrow=2)
mat
vec = c(1:9)
vec
lst = list(mat,vec)
lst

