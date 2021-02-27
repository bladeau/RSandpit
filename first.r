#loading packages
require(ggplot2)
require(coefplot)
require(useful)

###########
#Variables
###########

#assigning Numeric Variables
x<-1
a<-b<-7
assign("c",4)

is.numeric(a)
class(b)


#Character data is represented as characters and factors
word<-"Chacters"
aFactor<- factor("aFactor")
nchar(word) 
nchar(28)

#Date and Date Time
date1 <- as.Date("2021-02-27")

date2 <- as.POSIXct("2021-02-27 9:36")
as.numeric(date2) #seconds since unix epoch

#Booleans/Logical
myBool<- TRUE
!is.logical(myBool)
class(myBool)=="logical"


#remove Variables
rm(x)


###########
#Vectors
###########

myVecX <- c(1,2,3,4,5,6,7,8,9,10)
myVecY <- -5:4


#element wise operations
myVecX%%2
myVecX^myVecY

length(myVecX)
myVecX^c(1,2) #different length vectors (must be multiple of each other)

#Vector conditional
myVecY<0
any(myVecY<0)
all(myVecY<0)


#character Vectors
myCharVec <- c("Hockey", "Football", "Baseball")
nchar(myCharVec)
myLongerCharVector <- c(myCharVec, "Hockey", "Football", "Baseball","Video Games","One","two","three")
myLongerCharVectorFactor<- factor(myLongerCharVector)
myLongerCharVectorFactor
as.numeric(myLongerCharVectorFactor)

#named Vectors
c(One="a", Two="y", Last="r")
w <- 1:3
names(w) <- c("a", "b", "c")


#Missing vs Null
is.na(c(1,2,NA,3))
is.na(c(1,2,NULL,3))
is.null(c(NULL,3))
 
#slicing
myVecX[1:2]

#functions
mean(x = c(1,2,NULL,3), na.rm=TRUE)
sum(myVecX)
nchar(myVec)



###########
#data.frame
###########

theDF <- data.frame(ColumnA=myLongerCharVector,myBool,myVecX)
NROW(theDF) + NCOL(theDF)
dim(theDF)
names(theDF)[3]
rownames(theDF)<- c("one","two","tree",
                    "four","five","six","seven","eight",
                    "nine","ten")
rownames(theDF)<-NULL
rownames(theDF)

head(theDF, n = 7)
tail(theDF)

theDF$myVecX
theDF[1,2]
theDF[1:3,1:2]
theDF[1:3,c(1,3)]
