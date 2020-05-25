data1<-wc_at
y<-data$AT
x<-data$Waist

model<-lm(y~x,data=data1)
summary(model)

pred<-predict.lm(model)

y_hat1=data.frame(x,y,pred,"error"=y-pred)

plot(x,y,type="l",col="green")
lines(pred,type='l',col='red')

data2=data.frame(x=c(40,75,200))
pred2<-predict.lm(model,newdata=data2)
pred2
