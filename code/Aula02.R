# Primeiro Comentário
1 + 1 # Somando

# Atribuindo valores a objetos
x <- 1
y = 1

# listando objetos
ls()
rm(x)
ls()

# Remover tudo da area de trabalho
rm(list = ls())

# Listar objetos dentro de um pacote
ls("package:datasets")

search()

## Diretorios
getwd()
setwd("~/Desktop/DSBD_2025_1/")
getwd()

list.files()
list.dirs()

x = system("ls", intern = T)
x

# Instalando pacotes da CRAN
install.packages("ggplot2")

# Instando pacotes de outras fontes
# Bioconductor
BiocManager::install("pacote")

# GitHub
remotes::install_github("usuario/repo")

help(package = "ggplot2")
library(ggplot2)
require(ggplot2)

help("ggplot")
??mean

###
x_1
X = 1
x = 2

c <- c(1, 2, 3)

x <- 1
x=1

z <- 1 + 1
z

z <- 1 + 
  1 + 1

z <- (1 + 1)
  

1 + 1 # Adição
2 - 1 # Subtração
3 * 2 # Multiplicação
4 / 2 # Divisão
5 ^ 2 # Potenciação
5 %% 2 # Resto da divisão
5 %/% 2 # Divisão inteira

log(10) # Logarítimo natural
exp(10) # Exponencial
log10(100) # Logarítimo base 10
log2(10) # Logarítimo base 2
log(100, base = 8) # Log. base 8


sin(0) # Seno
cos(0) # Cosseno
tan(0) # Tangente
asin(0) # Arco seno
acos(0) # Arco cosseno
atan(0) # Arco tangente

pi
round(pi, digits = 2) # Arredondamento
ceiling(pi) # Teto
floor(pi) # Piso
trunc(pi) # Truncamento
abs(-10)
sqrt(16)

x = 1

# Logico
1 == 1 # Igual
1 != 2 # Diferente
1 > 2 # Maior
1 < 2 # Menor
1 >= 1 # Maior ou Igual
2 <= 1 # Menor ou Igual

a <- 1
b <- 2
a <= b

# V & V = V
(1 == 1) & (2 == 2) # E / AND

# V | F
(1 == 1) | (2 == 3) # OU / OR
!(1 == 2) # NÃO / NOT


"R" == "r" # Comparação de strings
"a" < "b" # Ordem Alfanumérica
"1" < "2" # Ordem Alfanumérica
"ç" < "c"
"ç" < "d"

### Vetores
numeros <- c(1, 2, 3, 4, 5)
numeros

letras <- c("a", "b", "c", "d", "e")
letras

logicos <- c(TRUE, FALSE, TRUE, FALSE)
logicos

logicos2 <- c(T, F, T, F)
logicos2

## Coerção
vetor <- c(numeros, letras, logicos)
vetor

numeros[1]
numeros[4]

numeros[length(numeros)]

is.numeric(numeros)
class(numeros)
class(logicos)
is.numeric(logicos)

as.numeric(logicos)
logicos
as.character(numeros)
as.numeric(letras)

as.numeric(as.character(numeros))

typeof(logicos)

###
datas <- c("2021-01-01", "2021-01-02", "2021-01-03")
class(datas)
# Converte para data
class(as.Date(datas))


# Metodos
methods(class = "numeric")
methods(class = "character")

## Vetores Nomeados

## Podemos ter um vetor numérico com nomes

altura_sem_nome = c(1.82, 1.68, 1.62)
altura <- c("João" = 1.82,
            "Bianca" = 1.68,
            "Eduarda" = 1.62)
altura
class(altura)
attributes(altura)
names(altura)

names(altura_sem_nome)
names(altura_sem_nome) <- c("J", "B", "E")
altura_sem_nome["J"]
altura_sem_nome[c("B", "E")]

### Criando Vetores

# Sequência de 1 a 10
seq1 <- seq(1, 10)
seq1

# Sequência de 10 a 1, de 2 em 2
seq2 <- seq(10, 1, by = -2)
seq2

seq(from = 1, to = 10, by = 0.1)

c(1:10)
seq(1:10)

# Repete 1, 2 e 3, 3 vezes
rep1 <- rep(c(1, 2, 3), times = 3)
rep1

# Repete 1, 2 e 3, 3 vezes cada
rep2 <- rep(c(1, 2, 3), each = 3)
rep2

letters[1:10]
LETTERS[11:23]

## 
# 5 Números aleatórios entre 0 e 1
round(runif(5)*10)
round(runif(6, min = 1, max = 60))

## Normal
rnorm(10)
rnorm(10, mean = 10, sd = 2)

# Amostras aleatórias
sample(numeros, 
       size = 3, 
       replace = FALSE)

sample(numeros, 
       size = 3, 
       replace = TRUE)

indice = sample(numeros, 
       size = 3, 
       replace = TRUE)
numeros[indice]

## Selecao de vetores
numeros[1]
numeros[c(2,4)]
altura[c(2,3)]

# remove o segundo elemento
altura_sem_bianca = altura[-2]
altura
altura_sem_bianca
altura[-c(1,3)]


# Seleciona alturas maiores que 1.70
# 
# 
altura[altura > 1.7]


mascara_logica <- altura > 1.70
mascara_logica
altura[mascara_logica]


# Seleciona a altura de João
altura["João"]
# Seleciona a altura de João
altura["Bianca"]
# Seleciona a altura de João
altura["Deisy"]

# Seleciona a altura de João e Bianca
altura[c("João", "Bianca")]

# is.na()
# is.null()

altura["Bianca"] <- 1.86
altura

altura["Eduarda"] <- NA
altura


# Adiciona a altura de Ivete
altura = append(altura, 
       value = c("Ivete" =  1.60))

altura

# Concatena alturas
alturas2 <- c("Alana" = 1.70, 
              "Rafael" = 1.80)
alturas <- c(altura, alturas2)
alturas


## Estatística
y <- c(7, 5, 2, 2, 4, 8, 
       5, 2, 6, 4, 5, 10, 
       3, 2, 6, 10, 7, 8,
       6, 10, 3, 4, 5, 1)

# Número de elementos
length(y)
sum(y)
mean(y)
median(y)
var(y)
sd(y)
max(y)
min(y)

summary(y)
quantile(y, 0.1)
quantile(y, c(0.01, 0.99))

# Coeficiente de variação
100 * sd(y) / mean(y)

# Amplitude Interquartilica
IQR(y)
table(y)


## Matrizes
## 
# Cria uma matriz 2x3[linha x coluna]
matriz <- matrix(1:6, nrow = 2)
matriz

# Cria uma matriz 2x3[linha x coluna]
matriz <- matrix(1:6, 
                 nrow = 2,
                 byrow = T)
matriz

# Criando matriz a partir de um vetor
vet1 <- c(1, 2, 3)
vet1

vet2 <- c(4, 5, 6)
vet2
# Junta vet1 e vet2 por linha
matriz3 <- rbind(vet1, vet2)
matriz3

# Junta vet1 e vet2 por coluna
matriz4 <- cbind(vet1, vet2)
matriz4

## Selecionando elementos da matriz
matriz4[1,1]
matriz4[2,2]

matriz4[1,]
matriz4[,2]

# Operacoes com matrizes
mat1 <- matrix(1:4, nrow = 2)
mat2 <- matrix(5:8, nrow = 2)
mat1
mat2
# Soma de matrizes
mat1 + mat2
mat1 - mat2


# Multiplicação de matrizes
mat1 %*% mat2
mat1 * mat2
# Multiplicação por escalar
mat1 * 2
# Transposta
t(mat1)

det(mat1)
crossprod(mat1) # A * t(A)
tcrossprod(mat1) # t(A) * A
solve(mat1) # inversa 

dim(mat1) # linha e coluna
nrow(mat1) # linha
ncol(mat1) # coluna

## Data Frame

# Cria um data frame
df <- data.frame(
  nome = c("João", "Ana", "Carlos"),
  idade = c(25, 30, 22),
  altura = c(1.75, 1.60, 1.80)
)
df
View(df)

dim(df)
nrow(df)
ncol(df)

names(df)
df$idade
df$altura
class(df$nome)
class(df)
is.data.frame(df)
View(df)

df$peso <- c(70, 65, 90)
df

df$peso <- NULL
df

df$peso <- c(70, NA, 90)
df

# Elementos de um DF
df[1,]
df[, 2]

df[, "idade"]
df[, "peso"]

df$idade
df$peso

df$peso[1]
df$idade[2]


head(df)
tail(df)
head(df, 10)
tail(df, 10)

str(df)

# Filtra as linhas com idade maior que 25
df[df$idade > 25, ]

# Filtra as linhas com altura menor que 1.75 
# e idade maior que 22
df[df$altura < 1.75 & df$idade > 22, ]

df[df$altura < 1.75 | df$idade > 22, ]

subset(df, altura > 1.75)
df[df$altura> 1.75,]
# Filtra as linhas com idade maior que 25
# Seleciona apenas os nomes
subset(df, idade > 25, select = nome)
subset(df, 
       (altura < 1.75 & idade > 22), 
       select = nome)

summary(df)
summary(df$idade)

# Ordena o data frame pela idade

df[order(df$idade), ]

# Ordena o data frame pela idade de forma decrescente

df[order(df$idade, decreasing = TRUE), ]


# Data Table

library(data.table)


# Criar um data.table
meu_data_table <- data.table(
  nome = c("Alice", "Bob", "Carol", "Ana", "João", "Carlos", "Patrícia", "Leonardo"),
  idade = c(25, 30, 28, 20, 27, 50, 60, 45),
  salario = c(5000, 6000, 5500, 8000, 2000, 3500, 10000, 3800 ), 
  meio_de_transporte = c('onibus', 'bicicleta', 'onibus', 'carro', 'carro', 'onibus', 'onibus', 'bicicleta'))
meu_data_table

dim(meu_data_table)
length(meu_data_table)
nrow(meu_data_table)
ncol(meu_data_table)
str(meu_data_table)
meu_data_table$nome


meu_data_table[, .(nome, meio_de_transporte)]
meu_data_table[idade > 30]

meu_data_table[idade > 30, .(nome)]
# Filtra as linhas com idade maior que 30 e salário maior que 5000 e mostra apenas o nome

meu_data_table[idade > 30 & salario > 5000, .(nome)]
  

# Calcula a média do salário

meu_data_table[, .(media_salario = mean(salario))]

# Calcula a média do salário por meio de transporte
meu_data_table[, .(media_salario = mean(salario), 
                   by = meio_de_transporte)]


## Lendo
dados <- read.table("caminho/arquivo.txt", 
                    header = TRUE, 
                    sep = "\t", 
                    dec = ",")
dados <- read.csv("caminho/arquivo.csv")
dados <- data.table::fread("caminho/arquivo.csv")

as.data.table()

library(readr)
Queimadas <- read_csv("data/Queimadas.csv", 
                      col_names = FALSE)
View(Queimadas)

write.table(dados, "caminho/arquivo.txt", 
            sep = "\t", 
            dec = ",")
write.csv(dados, "caminho/arquivo.csv")
data.table::fwrite(dados, "caminho/arquivo.csv")