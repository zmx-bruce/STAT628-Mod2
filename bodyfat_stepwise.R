setwd("C:/Users/Yixuan/Desktop/Madison/stat628/module2")
bodyfat=read.csv("adjust.csv",header=TRUE)
library(MASS)
full.model=lm(BODYFAT~.,data=bodyfat)
step.model=stepAIC(full.model,direction = "both")
summary(step.model)
#delete the variable density
bodyfat_del=bodyfat[,c(-2,)]
full.model2=lm(BODYFAT~.,data=bodyfat_del)
step.model2=stepAIC(full.model2,direction = "both", trace = FALSE)
summary(step.model2)
