setwd("C:/Users/BERNARDO.CASTILLO/Documents/4oPeriodo/Analise Exploratória")


library(tidyverse)
 #Ex1
dados = read_csv("cces_sample.csv")

ex1 = select(dados, "educ","edloan", "employ","CC18_308a")

knitr::kable(head(ex1))
#Ex2

ex2 = select(dados, "educ","edloan", "employ","CC18_308a")

ex2$trump_approve_disapprove  = recode(ex2$CC18_308a,
                           '1' = 1,
                           '2' = 1,
                           '3' = 0,
                           '4' = 0)

#Ex3
ex3 = dados %>%
  filter(employ==1 & marstat==1)%>%
  summarise(media = mean(pew_religimp),
            mediana = median(pew_religimp))

options(digits = 3)
knitr::kable(head(ex3))