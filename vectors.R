#Basic vector functions

x<-c(1,2,6,4,5,6,7,8,9)

#dropping the firstvalue

x[-1]

#calling 3rd value

x[3]

#calling 3,5,9 values

x[c(3,5,9)]

#calling values from 2 to 8

x[c(2:8)]

# Airthematic operations on 2 vectors

x<-c(1,3,5,7)
y<-c(2,4,6,8)
x+y

x*y

x-y

x/y

x^y

x%*%y

x%/%y

#Boolean Values

x!=y

is.numeric(x)

is.character(x)

is.numeric(y)

#making a matrix by 2 vectors

cbind(x,y)

rbind(x,y)

