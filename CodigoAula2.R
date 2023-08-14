
vetor = c(1, 2, 4, 8,10, 3)
texto = c("B", "R","A","S","I","L")

dados = data.frame(vetor, texto)

#precisamos indicar o caminho

setwd("C:/Users/BERNARDO.CASTILLO/Documents/4oPeriodo/Analise Exploratória")

write.csv(dados, "base1.csv")

#para eliminar as posições, basta row.names = FALSE

write.csv(dados, "base1.csv" , row.names = FALSE)

#CSV separa as colunas por vírgula.
#csv2 serve para separar as colunas com ponto-e-virgula

write.csv2(dados, "base2.csv", row.names = FALSE)

#Como ler do excel
#Instalar o pacote readxl
#Carregar o pacote

library(readxl)

dados2 = read_excel("base3.xlsx")

#usar o comando library carrega um pacote inteiro na sessão do RStudio.
#Se você quiser usar uma função sem carregar o pacote, basta usar o indicador
#de encadeamento ::
#Exemplo readxl :: read_excel("nome_do_arquivo")