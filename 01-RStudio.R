# Primeiros Passos na Linguagem R

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome!!!
# Define diretório
setwd('c:/FCD/BigDataRAzure/Cap02')

# Visualiza diretorio
getwd()

# Nome dos Contributors
contributors()

# Licença
license()

# Informações sobre a sessão
sessionInfo()

# Imprimir na tela
print('Estou iniciando minha caminhada na carreira de Cientista de Dados')

# Criar gráficos
plot(1:25)

# Instalar pacotes
install.packages('randomForest') #pct floresta aleatoria
install.packages('ggplot2') #pct visualização de dados
install.packages('dplyr') #pct manipulação de dados
install.packages('devtools') #pct de desenvolvimento

# Carregar o pacote
library(ggplot2)

# Descarregar pacote
detach(package:ggplot2)

# Se souber o nome da função
help(mean)
?mean

# Para buscar mais opções sobre uma função, use o pacote sos
install.packages('sos')
library(sos)
findFn('fread')

# Se não souber o nome da função
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')

# Sair
q()

