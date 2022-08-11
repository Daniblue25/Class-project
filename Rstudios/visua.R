---
title: "Untitled"
author: "FIANKO Kossi"
date: "07/10/2021"
output: html_document
---

```{r}
library(tidyverse)
library(lubridate)
library(gganimate)
library(readxl)
library(questionr)
library(ggplot2)
```

décrire les évolutions au cours du temps des enveloppes globales par type de PHRC

décrire les évolutions au cours du temps des montants obtenus par les CHRU (et CHU) - avec un focus sur le CHRU de Strasbourg

présenter le top 10 de 2018 et celui de 2019 - et montrer les changements dans ce classement



```{r}
# Importation des données
setwd("C:/Users/LENOVO/Documents/MASTER/M2/Application pratique/defi 2/doc")


```

```{r}
## Organisation des données
summary(PHRC_I_2012)
PHRC_I_2012 %>% select(PHRC_I_2012$N_projet,PHRC_I_2012$`Montant
 (accordé  sous conditions de suivi)`)
PHRC_I_2012 <-  rename(PHRC_I_2012, "Montant" = "Montant\n (accordé  sous conditions de suivi)")


```


```{r}
################################################################################################
#                 AVANT TOUT REUSSIR A CHANGER LA VARIABLE MONEY                               #
################################################################################################

PHRC_I_2012$moni=0
for(i in 1: length(PHRC_I_2012$Montant) ){
  
  # Découpage et enrégistrement
 PHRC_I_2012$moni[i] =  strsplit(PHRC_I_2012$Montant[i], split = "€")[[1]][1]
# supression de l'espace dans la chaine de caractère
 PHRC_I_2012$moni[i] = gsub(" ","",PHRC_I_2012$moni[i])
 #conversion en numerique
 PHRC_I_2012$moni[i] = as.numeric(as.character(PHRC_I_2012$moni[i]))
 
 
  print(paste("je suis sur la ligne:", i))
  print(paste("ligne ",i,"le Montant est : ",PHRC_I_2012$Montant[i]))
  print(paste("je te découte la ligne ", i,"comme ceci :",strsplit(PHRC_I_2012$Montant[i], split = "€")))
  print(paste("je te retourne le premier élémnet([[1]][1]) de la ligne ",i,":", strsplit(PHRC_I_2012$Montant[i], split = "€")[[1]][1]))
  print(paste("je te supprime les espaces: ", gsub(" ","", strsplit(PHRC_I_2012$Montant[i], split = "€")[[1]][1]) ))
  print (paste("voici le rsultat final que j'ai coonverti en numérique: ",as.numeric(as.character(PHRC_I_2012$moni[i]))))
 
  print(paste(rep("*",20)))

}

 PHRC_I_2012$moni
PHRC_I_2012
```

```{r}
PHRC_I_2012$moni = strsplit(PHRC_I_2012$Montant, split = "€")#[[1]][1]
```

```{r}
library(tidyverse)
install.packages("rvest")
library(rvest)

rvest::read_html()
url_data <- "https://ourworldindata.org/famines"

css_selector <- "#tablepress-73"
css_selector_paragraph <- "body > main > article > div.content-wrapper > div.offset-content > div > div > section:nth-child(10) > div:nth-child(4) > div:nth-child(1) > ul > li:nth-child(5) > em"
url_data %>% rvest::read_html() %>% 
  html_element(css_selector_paragraph) %>% 
  html_text()

```




```{r}
library(readxl)
setwd("C:/Users/LENOVO/Documents/MASTER/M2/Application pratique/defi 2")
getwd()

df <- read_excel("C:/Users/LENOVO/Documents/MASTER/M2/Application pratique/defi 2/RESULTAT-PHRCK-2012-2.xls")





ggplot(dan, aes(x= pclass,y = age, color = survived))+ geom_jitter() +
  labs(x="Tarif",     y = "Age") + geom_point(alpha= 0.3)


slic
```


























