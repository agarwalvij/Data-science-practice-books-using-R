#Summary of advertising Dataset

summary(X7_ab_ads_1)

#checking a plot view

plot(X7_ab_ads_1)

#checking any missing values

is.na(X7_ab_ads_1)
sum(is.na(X7_ab_ads_1))

#Assigning Variable 
x=X7_ab_ads_1$clicks

#Confidence Interval @ 95%

ci(x,confidence = 0.95)

#T-test for Hypothesis testing

t.test(x,mu=500)

# Two tail Hypothesis testing

t.test(x,mu=650,alternative = "two.sided")
