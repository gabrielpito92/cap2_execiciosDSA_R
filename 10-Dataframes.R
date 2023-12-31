# DataFrames e Operações com DataFrame

# Config. o DIR de trabalho
setwd('c:/FCD/BigDataRAzure/Cap02')
getwd()

# Criando um df vazio
df <- data.frame()
class(df)
df

# Criando vetores vazios
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

df <- data.frame(c(nomes, idades, itens, codigos)) #vetor de vetores
df

# Criando vetores
pais = c('Portugal', 'Inglaterra', 'Irlanda', 'Egito', 'Brasil')
nome = c('Bruno', 'Tiago', 'Amanda', 'Bianca', 'Marta')
altura = c(1.88, 1.76, 1.53, 1.69, 1.68)
codigo = c(5001, 2183, 4702, 7965, 8890)

# Criando um df de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa

# Add um novo vetor a um df existente
olhos = c('verde', 'azul', 'azul', 'castanho', 'castanho')
pesq = cbind(pesquisa, olhos) #ligação pela col
pesq

# Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)

# Obtendo um vetor de um dataframe
pesq$pais
pesq$nome

# Extraindo um único valor
pesq[1,1]
pesq[3,2]

# Núm de rows e cols
nrow(pesq)
ncol(pesq)

# Primeiros elementos do df
head(pesq)
head(mtcars) #um dataset que vem com o R

# Últimos elementos do df
tail(pesq)
tail(mtcars) #um dataset que vem com o R

# Data frames built-in do R
?mtcars #um dataset que vem com o R (info sobre autos)
mtcars

# Filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60,]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq

# Data Frames nomeados
names(pesq) <- c('Pais', 'Nome', 'Altura', 'Código', 'Olhos')
pesq

colnames(pesq) <- c('Var 1', 'Var 2', 'Var 3', 'Var 4', 'Var 5')
rownames(pesq) <- c('Obs 1','Obs 2','Obs 3','Obs 4','Obs 5')
pesq

# Carregando um arquivo csv
?read.csv
pacientes <- data.frame(read.csv(file = 'pacientes.csv', header=TRUE, sep=','))

# Visualizando o dataset
View(pacientes)
head(pacientes)
summary(pacientes)

# Visualizando as variáveis
pacientes$Diabete
pacientes$status
pacientes$Status

# Histograma
hist(pacientes$Idade)

# Combinando Dfs
dataset_final <- merge(pesq, pacientes)
dataset_final

