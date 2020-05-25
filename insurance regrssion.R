#data set summary

summary(insurance)

#converting 'Char' to 'Numeric' by using factor/ordered function

smoker<-factor(insurance$smoker,ordered =T)
sex<-factor(insurance$sex,ordered=T)

# Multiple linear regression

model<-lm(charges~age+sex+bmi+children+smoker,data=insurance)
summary(model)

#predicting Charges

predict_old<-predict.lm(model)
predict_old

#making new data frame

x=insurance$charges
new_data=data.frame(insurance,predict_old,"error"=predict_old-x)

#checking correlation

data3<-data.frame(insurance$age,insurance$bmi,insurance$children,insurance$charges)
cor(data3)

#Plotting Regression

plot(model)
avPlots(model)
influenceIndexPlot(model)

# Re-running egression by omitting 'Sex'

model_ins<-lm(charges~age+bmi+children+smoker,data=insurance)
summary(model_ins)

# Regression Plotting

plot(model_ins)
avPlots(model_ins)
influenceIndexPlot(model_ins)

#prediction irrespective of insurer's sex

predict_smoke<-predict.lm(model_ins)
predict_smoke

# Checking if the Insurance consideres too strongly smoking habits

model_ins1<-lm(charges~age+bmi+children,data=insurance)
summary(model_ins1)

region_ins<-factor(insurance$region,ordered=T)
region_ins

model_ins2<-lm(charges~age+bmi+children+smoker+region_ins+sex,data=insurance)
summary(model_ins2)

# Region, Sex are not the factors impacting the insurance charges of an indivisual
