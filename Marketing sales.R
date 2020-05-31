##Renaming dataset for ease

data<-datasets_619455_1106121_Marketing_Data

#summary of dataset

summary(data)

#checking 'NULL' values

sum(is.na(data))

#Multiple Linear Regression

sales_model<-lm(sales~.,data=data)

#Regression Summary

summary(sales_model)

#Model Validation By plots

residualPlots(sales_model)
plot(sales_model)

#Correlation between Variables

cor(data)

#Checking Outliers & influencers

influenceIndexPlot(sales_model)

#Squaring 'newspaper' for X2-transormation

data['newspaper2']<-data['newspaper']*data['newspaper']

#Re-running regression

sales_model1<-lm(sales~.,data=data)
summary(sales_model1)

#Omitting Outliers

sales_model2<-lm(sales~.,data=data[-102,])
summary(sales_model2)

#Influencer plot

influenceIndexPlot(sales_model2)

#Removing outliers & non-significant Variable

sales_model3<-lm(sales~.,data=data[-c(102,47,135,134),-c(3,5)])
summary(sales_model3)

#Re-checking outliers

influenceIndexPlot(sales_model3)

#Sales Prediction

sales_pred<-predict.lm(sales_model3)

#Creating New dataframe with predicted values & error

projected_sales<-data.frame(data[-c(102,47,135,134),-5],
                            sales_pred,'error'=sales_pred-data$sales[-c(102,47,135,134)])

#Plotting Prediction & Actual Sales

plot(data$sales,type='l',col='green')
lines(sales_pred,type='l',col='red')                            

#Checking Akaike Information Criteria(AIC) for model-validation if the removed variable is correct or not

stepAIC(sales_model)

## Multiple R-squared:  0.9173,	Adjusted R-squared:  0.9163
## Model displays 91.63% accuracy.


