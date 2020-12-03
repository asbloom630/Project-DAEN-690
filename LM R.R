library(tidyverse)
library(tidymodels)
library(readxl)
df <- read.csv("C:/All Doc/GMU DAE/DAEN 590 Project/Datasets/Output 2.csv")

summary(df)

fit1<-lm(Feet~Med_Desc+Procedure_Desc, data=df)

fit1

summary(fit1)

plot(fit1)

df = df[,c(1,2,7,8,9,3,4,5,6,10 )]

install.packages("GGally")
library(GGally)
library(dplyr)

#correlation plot
df[1:5] %>%
  ggcorr(method = c('complete.obs','pearson'), 
         nbreaks = 6, digits = 3,label = TRUE, label_size = 3, 
         label_color = "black", label_round = 2, legend.size = 9, hjust = 0.8, size = 3, layout.exp = 1.5)

chisq.test(df$Performer_ID_Internal, df$Disposition_Incident_Patient_Disposition)


