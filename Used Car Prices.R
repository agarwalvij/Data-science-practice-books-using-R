summary(Toyota1)
sum(is.na(Toyota1))
toyota_new<-na.omit(Toyota1)
data<-strings2factors(toyota_new)
is.na(data)
sum(is.na(data))
modelC<-lm(Price~.,data=data)
summary(modelC)
data4<-data[, -c(1,2,6,10,11,14,23,24,28,29,32,33,35,36,37,15,16,31)]
modelD<-lm(Price~.,data=data4)
summary(modelD)
residualPlots(modelD)
avPlots(modelD)
influenceIndexPlot(modelD)

data4['cc2']<-data4$cc*data4$cc
data4['age2']<-data4$Age_08_04 * data4$Age_08_04

data5<-data4[,-c(11,12,13,14,15,16,17,18,19,20)]
modelE<-lm(Price~.,data=data5)
summary(modelE)
residualPlots(modelE)
influenceIndexPlot(modelE)

data6<-data5[-79,-7]
modelF<-lm(Price~.,data=data6)
summary(modelF)
influenceIndexPlot(modelE)
