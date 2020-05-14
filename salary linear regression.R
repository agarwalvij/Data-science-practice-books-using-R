# Loading the CSV file on R-studio cloud

data<-read.csv('Salary_Data.csv')
data

# Checking the summary of the Dataset

summary(data)

# checking out liers

boxplot(data$Salary)

boxplot(data$YearsExperience)

# Plot of the dataset
plot(data$Salary,data$YearsExperience, main='Average Salary Insight',
        xlab='Salary', ylab='Years of Experience', col='green',type='l')

#Barplot

barplot(data$Salary,main="Salary of the Team",xlab="Salary",ylab="No. of Instances",
        col='cyan')
barplot(data$YearsExperience, col='blue')

#calling the Max function

max(data$YearsExperience)
max(data$Salary)

#calling the minimum values

min(data$YearsExperience)
min(data$Salary)

# Splitting the data in 80:20 train:test ratio

library(caTools)

set.seed(2)
split<-sample.split(data, SplitRatio=0.8)
split
train<-subset(data, split=T)
test<-subset(data, split=F)
train
test

# creating model for regression

model<-lm(Salary~.,data=train)
summary(model)

#Prediction
predict<-predict(model,test)
predict

# comparing

plot(test$Salary,type='l',col='cyan')
lines(predict,type='l', col='red')
plot(predict,type='l',col='red')

#Accuracy by Root mean square error

rms<-sqrt(mean(predict-data$Salary)^2)
rms

scatter.smooth(data$Salary,data$YearsExperience)

#Predicting salary of 15yrs experience

y=25792.2+(9450*15)
y
