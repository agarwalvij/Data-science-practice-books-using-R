car<-datasets::cars
summary(car)

#box plot for outliers

boxplot(car$speed)
boxplot(car$dist)

#Relationship b/w 2 variables

plot(car$speed,car$dist, main="Car Stopping distance",
     xlab='Speed',ylab='Distance',type='l',col='blue')

#Train-Test split

library(caTools)
set.seed(2)
split<-sample.split(car, SplitRatio=0.7)
split
train<-subset(car,split=T)
test<-subset(car,split=F)
train
test

#Regression

model<-lm(dist~.,data=train)
model
summary(model)

#Predict

pred<-predict.lm(model,test)
pred

#Accuracy

rmse<-sqrt(mean(pred-car$dist)^2)
rmse

#plotting actual & prediction

plot(car$dist,type='l',col='blue')
lines(pred,type='l',col='red')

#scatterplot
scatter.smooth(car$dist,car$speed)

#Regression Value y=b+mx for 100 speed

y<- -17.5791+(3.9324*100)
y
