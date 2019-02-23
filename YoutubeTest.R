---
title: "Youtube"
author: "Ricardo"
date: "10 de noviembre de 2018"
output:
word_document: default
html_document: default
---
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```
```{r}
library(dplyr)
library(dslabs)
library(ggplot2)
library(readxl)
library(ggthemes)
library(scales)
library(grid)
library(ggpubr) #install ggpubr coef corr R y Pvalue
```
```{r}
youtube <- read_excel("C:/Ricardo Contreras/Profesor/U.A.E/Investigacion/DATA/Youtube/YoutubeDATA.xlsx")
```
```{r}
names(youtube)
```
```{r}
summary(youtube)
```
```{r}
youtube%>%
ggplot(aes(SEMANA, INGRESOS))+
geom_col(fill="red") +
labs(x= "SEMANA", y= "INGRESOS $", title="Youtube Income", subtitle = "19 semanas", caption = "Autor:RicardoC")+
geom_text(aes(label = dollar((INGRESOS))), size = 3, hjust = 0.5, vjust = -0.5, position =     "stack") +
scale_y_continuous(labels=dollar) +
geom_hline(aes(yintercept = mean(INGRESOS))) +
theme_economist()+
theme(axis.text.x = element_text(angle = 90, hjust =1)) +
theme(plot.caption = element_text(hjust = -0.05))
```
```{r}
fit <- lm(INGRESOS ~ VISUALIZACION + VIDEOSPUB + LIKE, data=youtube)
summary(fit) # show results
```
```{r}
youtube %>% summarize(r = cor(VISUALIZACION, INGRESOS), R = cor(VIDEOSPUB, INGRESOS), Rlike = cor(LIKE, INGRESOS))
```
```{r}
youtube %>%
ggplot(aes(VISUALIZACION, INGRESOS))+
geom_point(shape=18, color="red")+
geom_smooth(method=lm, se=FALSE, linetype="dashed",
color="black")+
scale_y_continuous(labels=dollar)+
labs(title = "Relacion Ingresos y tiempo de visualizacion")
```
```{r}
youtube %>%
ggplot(aes(VIDEOSPUB, INGRESOS))+
geom_point(shape=18, color="red")+
geom_smooth(method=lm, se=FALSE, linetype="dashed",
color="darkred")+
labs (title = "Relacion Ingresos y videos subidos")
```
```{r}
youtube %>%
ggplot(aes(LIKE, INGRESOS))+
geom_point(shape=18, color="red")+
geom_smooth(method=lm, se=FALSE, linetype="dashed",
color="darkred")+
labs(title = "Relacion ingresos y LIKES")
```
```{r}
hist(youtube$INGRESOS)
```
savehistory("C:/Ricardo Contreras/Profesor/U.A.E/Investigacion/Articulos Cientificos/Youtube/youtuberc/YoutubeCode.Rhistory")
library(tidyverse)
library(colorspace)
install.packages("tidyverse")
library(tidyverse)
install.packages("colorspace")
library(tidyverse)
library(colorspace)
data()
data(BOD)
savehistory("C:/Ricardo Contreras/Profesor/U.A.E/Investigacion/Articulos Cientificos/Youtube/youtuberc/YoutubeTest.R")
