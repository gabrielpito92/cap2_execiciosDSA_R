# Matrizes, Operações com Matrizes e Matrizes Nomeados

# Config. o DIR de trabalho
setwd('c:/FCD/BigDataRAzure/Cap02')
getwd()

# Criando Matrizes

# Número de linhas
matrix(c(1,2,3,4,5,6), nr=2) #nr: num rows (passando um vetor 'c' como parametro)
matrix(c(1,2,3,4,5,6), nr=3)
matrix(c(1,2,3,4,5,6), nr=6)

# Número de cols
matrix(c(1,2,3,4,5,6), nc=2) #nc: num cols

# Help
?matrix

# Matrizes precisam ter um número de elementos que seja múltiplo do número de linhas
matrix(c(1,2,3,4,5), nc=2)

# Criando matrizes a partir de vetores e preenchendo a partir das linhas
meus_dados = c(1:10)

#byrow: logical. If FALSE (the default) the matrix is filled by columns,
#otherwise the matrix is filled by rows.
#(!preenchimento por linha! ao invés de ser por col que é o padrão)
matrix(data = meus_dados, nrow=5, ncol=2, byrow=T)
matrix(data = meus_dados, nrow=5, ncol=2)

# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr=2)
mat
mat[1,2] #row, col
mat[2,2]
mat[1,3] #Error: out of bounds (Fora do limite)
mat[,2] #Todas as linhas da col 2

# Criando uma matriz diagonal
matriz = 1:3
diag(matriz)

# Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor) #traz os elementos porque o interpretador já sabe que o restante é 0

# Transposta da matriz
W <- matrix(c(2,4,8,12), nr=2, ncol=2)
W
t(W) #função t cria uma matriz transposta!
U <- t(W)
U

# Obtendo uma matriz inversa
solve(W) #conceito amplo, buscar estudar mais!

# Multiplicação de Matrizes
mat1 <- matrix(c(2,3,4,5), nr=2)
mat1
mat2 <- matrix(c(6,7,8,9), nr=2)
mat2
mat1 * mat2 #1° elem. da 1° pelo 1° elem. da 2°
mat1 / mat2
mat1 + mat2
mat1 - mat2

# Multiplicando Matriz com vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr=2)
x*y

# Nomeando a Matriz
mat3 <- matrix(c('Terra', 'Marte', 'Saturno', 'Netuno'), nr=2)
mat3
dimnames(mat3) = (list(c('Linha1', 'Linha2'), c('Coluna1', 'Coluna2')))
mat3

# Identificando linhas e colunas no momento de criação da matriz
# dimnames: nomes das dimensões da matriz
matrix(c(1,2,3,4), nr=2, nc=2, dimnames = list(c('Linha1', 'Linha2'), c('Coluna1', 'Coluna2')))

# Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nr=2)
mat4
mat5 <- matrix(c(6,7,8,9), nr=2)
mat5
cbind(mat4, mat5) #ligar col
rbind(mat4, mat5) #ligar row

# Descontruindo a Matriz
c(mat4) #transforma a matriz em um vetor com a func. c() - 2dimensões em 1

