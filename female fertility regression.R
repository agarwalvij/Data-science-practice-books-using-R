data<-SLR2

#EDA

summary(data)

#Plot

plot(data)

#Checking normality

qqnorm(data$`worker percent`)
qqline(data$`worker percent`)

qqnorm(data$`fertility rate`)
qqline(data$`fertility rate`)

#Checking outliers

boxplot(data$`worker percent`,horizontal=T)
boxplot(data$`fertility rate`,horizontal = T)

boxplot(data$`worker percent`,data$`fertility rate`,horizontal = T)

#Assigning Variables

y<-data$`worker percent`
x<-data$`fertility rate`

# Linear Regression

model<-lm(y~x,data=data)
summary(model)

#Prediction

new_data=data.frame(x=c(3,9,1,2,8))
predict<-predict.lm(model,newdata = new_data)
predict
