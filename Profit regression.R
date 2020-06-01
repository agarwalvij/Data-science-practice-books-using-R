## Renaming Dataset

data<-datasets_457637_862349_50_Startups

#Checking data types

str(data)

# Plotting to figure out relation between variables

plot(data)
pairs(data)

# Checking 'NULL' values

sum(is.na(data))

# Running regression with '1' variable as 'Character'

model<-lm(Profit~.,data=data)
summary(model)

#Converting 'Char' to 'Factor'

data<-strings2factors(data)

#Re-running Regression

model<-lm(Profit~.,data=data)
summary(model)

#Plotting Data
plot(data)

# Correlation ton check Collinearity

cor(data[,-4])

# Removing a variable

data1<-data[,-4]

# Re-running Regression

model1<-lm(Profit~.,data=data1)
summary(model1)

#Residual plots

residualPlots(model1)
plot(model1)
influenceIndexPlot(model1)

#AIC

stepAIC(model1)

#Model validation

data2<-data1[-c(49,50),-2]

#Model fitting

model2<-lm(Profit~.,data=data2[-c(15,16,46,47),])
summary(model2)

influenceIndexPlot(model2)

##Multiple R-squared:  0.9711,	Adjusted R-squared:  0.9697
##Model explains 96.97% of Regression

#Predicting

preict<-predict.lm(model2)

#Plot Predict vs actual

plot(data2$Profit,type='l',col='green')
lines(preict,type='l',col='red')
