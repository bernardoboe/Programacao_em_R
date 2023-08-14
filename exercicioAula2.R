Animais = c("Cachorro", "Gato", "Peixe", "Peixe", "Lagarto")
Alimentos = c("Pão", "Laranja","Chocolate", "Cenoura", "Leite")
ex = data.frame(Animais, Alimentos)
write.csv(ex, "TabEx1.csv")

library(tidyverse)

dados = read_csv("cces_sample.csv")
is.na(dados)

#Existem diversas maneiras de inputar dados faltantes
#a) eliminar os dados faltantes (linhas)
dados1 = drop_na(dados)
#b) eliminar a coluna com a maioria
dados2 = filter(dados1, gender ==2)
#c) substitui pela média, mediana ou moda
dados3 = select(dados2,"region", "educ", "race")

dados3 = rename(dados3, escolaridade="educ") 

dados3$region = recode(dados3$region,
               `1` = 'Northwest',
               `2` = 'Midwest',
               `3` = 'South',
               `4` = 'West')

dados3 = arrange(dados3, region)

dados3 = group_by(dados3, region)

tabela = summarise(dados3, media = mean(escolaridade))
knitr::kable(tabela)

dados4 = dados %>%
  drop_na() %>%
  filter(gender == 2) %>%
  select("region","educ","race")%>%
  rename(escolaridade="educ") %>%
  arrange(region) %>%
  group_by(region)

