# declaração de variáveis
mensagem = "Olá Mundo!" 
print(mensagem)

# declarção de vetor
vetor_1 <- c(0, 1, 2, 3, 4, 5)
vetor_2 <- c('Economia', 'Administração', 'Contabilidade')
vetor_3 <- c(1: 100)

# data types: numérico (inteiro, decimal, complexo) | lógico (Verdadeiro/False), texto (string)
print(10.5+10)
print(10i+2)
print("Meu texto")
print('Meu texto')
print(FALSE)

status <- TRUE
class(status)


# algoritmo
# declara variável idade
# se idade maior que 18 -> entrar no site
# se idade menor que 18 -> não entrar no site

# igualdade
print(10 == 10.0)
# diferença
print(10 != 10)
# maior que > (menor que <)
print(10 < 3)
# maior ou igual >= (menor ou igual que <=)
print(10 >= 10)

# sintaxe
if (condition){
  code
}


if (TRUE){
  print('Olá mundo!')
}


idade <- 17
if (idade >= 18){
  print('Você é maior de idade.')
}

# if/else
# sintaxe:
#if (condition){
#  code_1
#}else{
#  code_2
#}



idade <- 17
if (idade >= 18){
  print('Bem-vindo ao nosso site!')
}else{
  print('Você é de menor.')
}


# if/else/else if
cor <- 'preto'

if (cor == 'rosa'){
  print('Você gosta de rosa!')
}else if (cor == 'vermelho'){
  print('Você gosta de vermelho!')
}else if (cor == 'branco'){
  print('Você gosta de branco!')
}else{
  print('Não sei dizer qual cor você gosta.')
}


# if/else/else if
cor <- 'vermelho'

if (cor == 'rosa'){
  print('Você gosta de rosa!')
  carro <- 'uno'
  if (carro == 'fusca'){
    print('Você gosta de fusca rosa!')
  }else if (carro == 'uno'){
    print('Você gosta de uno rosa!')
  }else{
    print('Não sei dizer o que você gosta.')
  }
}else if (cor == 'vermelho'){
  print('Você gosta de vermelho!')
}else if (cor == 'branco'){
  print('Você gosta de branco!')
}else{
  print('Não sei dizer qual cor você gosta.')
}

# estrutura de repetição 
# sintaxe do loop for
#for (value in vetor){
#  codigo
#}

vetor <- c(1:10)

for (numero in vetor){
  if (numero == 5){
    print('Número 5')
    break
  }else if (numero == 2){
    next
  }
  print(numero**2)
}


carros <- c('Uno', 'Fusca', 'Argo')
for (carro in carros){
  if (carro == 'Uno'){
    print('Você comprou um uno.')
  }else if (carro == 'Fusca'){
    print('Você gosta de fusca.')
  }else{
    print('Você comprou um argo.')
  }
}

# sintaxe
#while (condition){
#  codigo
#
#}

# while infinito (não rodar código)
#while (TRUE){
#  print('Hello World!')
#}
# 1

numero <- 1
while (numero <= 10){
  if (numero == 5){
    numero = numero+1
    next
  }
  print(numero)
  numero = numero+1
}


# DataFrame

df <- data.frame(
  id = c(1, 2, 3, 4),
  sexo = c('Feminino', 'Masculino', 'Masculino', 'Femino'),
  renda = c(1500, 7000, 12000, 100000),
  score = c(980, 120, 880, 50),
  pix_recebido_1m = c(750, 99, 0, 50000),
  pix_recebido_6m = c(130, 2, 0, 150000),
  pix_enviado_1m = c(30, 0, 0, 300000),
  pix_enviado_1m = c(12, 90, 12, 10000)
)

print(head(df))
print(tail(df))
# dimensão
print(dim(df))

# pegando uma coluna
# sintaxe 1: df[['score']]
# sintaxe 2: df$score
print(df$score/1000)


# sumário estatístico
summary(df)


# plots
plot(df$renda)

plot(df$renda, type = 'l', col = 'blue')

plot(df[['renda']], df[['score']])

barplot(df[['score']], names.arg = df[['id']])

# boxplot
boxplot(df[['renda']])
# histograma
hist(df[['renda']])
# gráfico de pizza
pie(df[['renda']])
# máximo
max(df[['renda']])
# mínimo
min(df[['renda']])
# média
mean(df[['renda']])
# mediana
median(df[['renda']])
# quartis
quantile(df$renda, c(0.25, 0.5, 0.75))


install.packages('wooldridge')
data(wage1, package = 'wooldridge')
head(wage1)
tail(wage1)
summary(wage1$wage)
boxplot(wage1$wage)
hist(wage1$wage)
hist(log(wage1$wage))
# sintaxe: lm(y ~ x_1+x_2+...x_n, data)
regression <- lm(log(wage) ~ educ, data = wage1)
summary(regression)

regression_2 <- lm(log(wage) ~ educ+exper+tenure, data = wage1)
summary(regression_2)
coef(regression_2)