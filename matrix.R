# setting up a matrix

x<-matrix(1:8,2,4)
x

#Calling the 2nd row 1st column
x[2,1]

#Calling the complete 2nd row
x[2,]

# Calling the complete 2nd column
x[,2]

#using the drop function

x[1, , drop='F']

x[1, , drop='T']

# Assigning another vector

y=matrix(4:11,2,4)
y

# Adding 2 matrix

z=x+y
z

z=x*y
z

z=x/y
z

z=x%/%y
z

z1=x^y
z1

z2=y%/%x
z2

# Logic function

x<100

y<3

x<-matrix(1:8,2,4, drop='T')
x

x>3

x&y

