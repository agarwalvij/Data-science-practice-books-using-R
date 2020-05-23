data<-winequality_red

#Checking NA values

sum(is.na(data))

#Checking data frame varaible types

is(data)

#EDA of dataset

summary(data)

#Plotting the data set

plot(data)
plot(data$alcohol,data$density,main='Alcohol vs Density',
     xlab='Alcohol',ylab='Density',type='l',col='green')

#Inversly plotting or changing the axis
plot(data$density,data$alcohol,main='Alcohol vs Density',
     xlab='Density',ylab='Alcohol',type='l',col='cyan')

#Sugar vs Alcohol plot
plot(data$`residual sugar`,data$alcohol,main='Alcohol vs Sugar',
     xlab='Sugar',ylab='Alcohol',type='b', col='blue')

#running regression b/w Alcohol content & density

model<-lm(density~alcohol,data=data)
summary(model)

#Prediction

new_alcohol=data.frame(alcohol=c(11.73,17.5))
pred<-predict.lm(model,newdata=new_alcohol)
pred

#Likewise checking the aclohol content with measuring density

model<-lm(alcohol~density,data=data)
summary(model)

#Prediction

new_density=data.frame(density=c(0.75,0.332,0.99,1.00))
pred1<-predict.lm(model,newdata = new_density)
pred1

#similarly checking regression b/w sugar & alcohol
colnames(winequality_red)
x<-data$`residual sugar`
model<-lm(alcohol~x,data=data)
summary(model)

#Prediction

new_sugar<-data.frame(x=c(3.0,1.1,0.95,1.2))
predict2<-predict.lm(model,newdata=new_sugar)
predict2

#Plotting the relation of prediction 

plot(x,winequality_red$alcohol,type='b', col='green')
lines(predict2,type='l',col='red')

#comparing old data with predict 

predict3<-predict.lm(model,data=x)
predict3

plot(x,winequality_red$alcohol,type='b', col='green')
lines(predict3,type='l',col='red')
