# Configurando o diretório de trabalho
setwd('c:/FCD/BigDataRAzure/Cap02')
getwd()

# Criando variáveis
var1 = 100
var1
mode(var1)
help('mode')
sqrt(var1) # Calc. raiz quadrada

# Podemos atribuir o valor de uma variáveis a outra variável
var2 = var1
var2
mode(var2)
typeof(var2)
help('typeof')

# Uma variável pode ser uma lista de elementos
# Função c cria um vetor (uma lista de elementos separados por virgula)
var3 = c('primeiro','segundo','terceiro')
var3
mode(var3)

# Uma variável pode ser uma função
var4 = function(x){x+3}
var4
mode(var4)

# Podemos também mudar o modo do dado
var5 = as.character(var1)
var5
mode(var5)

# Atribuindo valores a objetos: mesma coisa que '=' mas tem uma pequena diferença interna no R
x <- c(1,2,3)
x
c(1,2,3) -> y
y
assign('x', c(6.3,4,-2)) #atribuir
x

# Verificando o calor em uma posição específica
x[1]

# Verificar objetos
ls()
objects()

# Remover objetos
rm(x)
x