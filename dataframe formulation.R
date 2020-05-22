#Defining Variable

name_of_company=c("Allied Signal","Bankers Trust", "General Mills", "ITT Industries",
                  "J.P.Morgan & Co.","Lehman Brothers","Marriott", "MCI","Merrill Lynch",
                  "Microsoft", "Morgan Stanley", "Sun Microsystems", "Travelers","US Airways",
                  "Warner-Lambert")
Measure_X=c(0.2423,0.2553,0.2541,0.2414,0.2962,0.2825,0.2581,0.2439,0.4026,0.3295,0.9136,
            0.2599,0.3942,0.2671,0.3500)

#Combining to form a dataframe

cbind.data.frame(name_of_company,Measure_X)->data
data

#plotting

plot(data)
barplot('name_of_company',Measure_X,col='green')
barplot(data)
name<-factor(name_of_company,order=F)
name
plot(name,Measure_X)
scatter.smooth(name,Measure_X, col='blue')
scatter.smooth(data)

#error ocured here
scatter.smooth(name_of_company,Measure_X,xlim=1)

#splicing
data[14,]
data[11,]

#Outlier search
boxplot(Measure_X)
hist(Measure_X, col='cyan')

# Skewness & Kurtosis

skewness(Measure_X)
kurtosis(Measure_X)

#Mean

mean(Measure_X)

#Standard deviation

sd(Measure_X)

# Variance
var(Measure_X)
