# R script to accopany Intro to R
# Copy for RStudent 2019
######################################################

# Assignment Examples
# Numeric
x = 7
y <- 8


# Character
Name <- "Troy"


# Logical
CheckFlag <- T

#Date 
DateTime <- date()
Date <- Sys.Date()

# use as.Date( ) to convert strings to dates
mydates <- as.Date(c("2007-06-22", "2004-02-13"))
mydates

# number of days between 6/22/07 and 2/13/04
days <- mydates[1] - mydates[2]
days


# Operators

z <- X + y
# The preceeding will return an error becuase X <> x

z1 <- x + y
z1
z2 <- x - y
z2
z3 <- x * y
z3
z4 <- x / y
z4
z5 <- x ** y
z5
z6 <- x ^ y
z6


# How to programmatically remove all variables
rm(list=ls(all=TRUE))

# How to programmatically clear the Console
cat("\014")


# Vectors in R
name <- c("Mike", "Lucy", "John") 
name[1]
name[2:3]
name[c(1,3)]

age <- c(20, 25, 30) 

#
X <- c(1, 3, 5, 7, 9, 11)
X*3
sqrt(X)

Y <- c(2,4,6,8,10,12)
X-Y

Z <- c(0,2,4)

X-Z

Z2 <- c(0,1,2,3)

X-Z2


# Missing Data in R
Z <- c(2, NA, 6, 8, NA, 12)
is.na(Z)

Z <- c(2, NULL, 6, 8, NA, 12)

# Useful Functions....
nchar(name)
length(X)
mean(X)
?"*"
apropos('mea')

# Clean Up 
rm(list=ls(all=TRUE))
cat("\014") 

# Arrays and Matrices

theArray2d <- array(1:9, dim=c(3,3))
theArray2d[1,2]

View(theArray2d)

theArray2d <- array(1:9, dim=c(3,3), byrow=TRUE)
# The above is to show that byrow is not valid for arrays

View(theArray2d)

theArray3d <- array(1:27, dim=c(3,3,3))

theArray3d[1,2,3]
View(theArray3d)

theMatrix <- matrix(1:4, nrow=2)
View(theMatrix)

theMatrix <- matrix(1:4, nrow=2, byrow=TRUE)
View(theMatrix)

# Lists
y <- list("a", 1L, 1.5, TRUE)
y[3]
str(y)
?str()

# Clean Up 
rm(list=ls(all=TRUE))
cat("\014") 

# Data Frames
x <- 10:1
y <- -4:5
z <- c('Hockey', 'Football', 'Curling', 'Soccer', 'Rugby', 'Baseball', 'Golf', 'Basketball', 'Wrestling', 'Tennis')
theDF <- data.frame(x,y,z)
theDF

theDF[1,2]

View(theDF)

names(theDF)<-c("Popularity", "Team Strength", "Sport")
View(theDF)

theDF[2:3]
theDF[1,3]
theDF[c(1,3)]
theDF[3]
theDF$Sport
theDF$`Team Strength`

# Clean Up 
rm(list=ls(all=TRUE))
cat("\014") 
#
ptm <- proc.time()
Yellow_Tripdata_2017_06 <- read.csv("C:/RTemp/yellow_tripdata_2017-06-ssd-copy.csv", comment.char="#")
proc.time() - ptm
View(Yellow_Tripdata_2017_06)

head(Yellow_Tripdata_2017_06)
str(Yellow_Tripdata_2017_06)
summary(Yellow_Tripdata_2017_06)

#
# Throwing out absurdly long trips
d2<-Yellow_Tripdata_2017_06[which(Yellow_Tripdata_2017_06$trip_distance<1000),]
str(d2)
summary(d2)

# Let's save our data frame for the next module...
save(Yellow_Tripdata_2017_06,file="Yellow_Tripdata_2017_06.RData")
