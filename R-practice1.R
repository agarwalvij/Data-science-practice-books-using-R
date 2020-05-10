#Loading the Dataset

equakes<-datasets::quakes

# Exploring the dataset's first 5 values

head(equakes,5)

# Exploring the dataset's last 5 values

tail(equakes,5)

#Summary of the dataset

summary(equakes)

#Plotting the data set graph

plot(equakes)

# Plotting the relationship between depth & magnitude

plot(equakes$depth,equakes$mag, 
     main='Depth vs Mgnitude', 
     xlab='Depth', ylab='Magnitude',
     col='blue')

# Plotting boxplot for each variable to figure out the outliers
#Depth
boxplot(equakes$depth)
#Magnitude
boxplot(equakes$mag)
#Stations
boxplot(equakes$stations)
#latitude
boxplot(equakes$lat)
#longitutde
boxplot(equakes$long)

#Plotting histograms

hist(equakes$depth)

hist(equakes$mag, main=' Magnitude Histogram',
     xlab='Magnitude',col='cyan')

# extracting value of row no 75

equakes[75,]

#extracting values from row 950 to 979

equakes[950:979,]

#seeking the maximum value of magnitude
max(equakes$mag)

#seeking maximum depth
max(equakes$depth)

#relation  between magnitude and longitude

plot(equakes$long,equakes$mag,
        xlab='Longitude', ylab='Magnitude', 
        col='yellow')

#relation between latitude and depth

plot(equakes$lat,equakes$depth,
     xlab='Latitude',ylab='Depth',
     col='green',type='p')

# Simple plot

plot(equakes$mag, type='l')

plot(equakes$depth,type='l')

plot(equakes$depth,equakes$stations,type='p',
     main= 'Depth vs Stations', xlab='Depth', ylab='Stations', col='orange')

# compiling all the plots in one frame

par(mfrow=c(3,3),mar=c(2,5,2,2), las=0, bty='n')
plot(equakes$lat,equakes$depth,main='Lat vs Depth')
plot(equakes$long, equakes$mag, main='Long vs Mag')
plot(equakes$stations,equakes$mag, main='Stations vs Mag')
plot(equakes$lat,equakes$mag, main='Lat vs Mag')
plot(equakes$long,equakes$depth, main='Long vs Depth')
plot(equakes$long,equakes$stations, main='Long vs Stations')
plot(equakes$lat,equakes$stations,main='Lat vs Stations')
plot(equakes$lat,equakes$long)
plot(equakes$depth, equakes$mag, main='Depth vs Mag')
