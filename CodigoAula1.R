#Como imprimir texto
print ("hello")
#Como imprimir objeto
hello = "uma ova"
print = (hello)
#atribuição
hello <- "que mané hello"
hello-> brasil
remove(brasil)

#a atribuição da  direita para esquerda pode ser substituida pelo igual


vetor = c(1, 2, 4, 8,10)
texto = c("B", "R","A","S","I","L")

length(vetor)
length(texto)

misturado = c(1,2,"","1","i")

dados = data.frame(vetor,texto,misturado)

#um vetor com números e textos será classificado como texto (o texto predomina)
is.na(dados$misturado)

class(misturado)
class(dados)

length(dados)
dim(dados)

#palavras reservadas
num_pi = pi
#algumas observações
1dados = dados # isso não funciona

dados1 = dados

espaco sideral = dados # isso não funciona

espaco_sideral = dados

espaco.sideral = dados

logico = misturado == "i"
print(logico)