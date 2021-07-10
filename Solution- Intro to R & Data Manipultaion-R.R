###Solution## Hands-on practice in Data structures-R

##-------------- Vector-----------------------#

#1. Create a vector V with numeric values
V=c(1,2,3,4)
#2. Add each element in vector V with 10
V+10
#3. Extract the values 2.1 and 3.3 from the vector x<-c(2.1,4.2,3.3,5.4)
x<-c(2.1,4.2,3.3,5.4)
x[c(1,3)]
#4. What is the result of x[-c(3,1)]
x[-c(3,1)]
#5. What is the output of x[]
x[]

###------------------Matrix------------------------------###
# 1. Create a matrix x with 9 integers of no of rows is 3 and give colnames as A,B,C
# Select rows 1 & 2 and columns 2 & 3 from the matrix x

y<-matrix(1:9,nrow=3,ncol=3)
colnames(y)<-c("A","B","c")
y[1:2,2:3]
#y[1:2,c(2,3)]

##------------- Array----------------------------------##
# Create an array of 25 elements by using array()
# Assign dim names by using dimnames()

z<-array(1:25,c(2,4,3))
dimnames(z)<-list(c('a','b'),c('u','v','w','x'),c('p','q','r'))
##----------------List---------------------------###
#1. Create a list x from the given two vector objects p and q
# p <- c(2,7,8),q <- c("A", "B", "C") 
# And find the value of x[2]

p <- c(2,7,8);q <- c("A", "B", "C")
newlist<-list(p,q)
newlist
newlist[2]
#newlist[[2]][1]

#2.If b <- list(a=1:10, c="Hello", d="AA"), write an R expression that
# will give all elements, except the second, of the first vector of b.

x <- list(a=5:10, c="Hello", d="AA")

#3.Let x <- list(a=5:10, c="Hello", d="AA"), write an R statement 
# to add a new item z = "NewItem" to the list x.

x$z<-'New Item'
##---------------DataFrame--------------#

# Create a simple data frame from 3 vectors. 
# Order the entire data frame by the first column.

Name<-c('r','y','t')
age<-c(23,34,56)
weight<-c(50,67,65)
df<-data.frame(Name,age,weight)
df[order(df$Name),]
##------------------ Data Manipulation -R -----------------------##
#1. Set your working directory
setwd("D://Files")
#2. Load Csv file and and name it as 'oj'
oj<-read.csv('oj.csv')
#3. View first 6 observations
head(oj)
#4. Check the descriptive statistics
summary(oj)
#5. Select the rows where the brand bought is Tropicana and  
#no feature advertisement is run from the columns week and store.
data<-oj[oj$brand=='tropicana'& oj$feat==0,c("week","store")]
library('dplyr')
data1<-filter(oj,brand=='tropicana'& feat==0)%>% select(c('week','store'))

#6.Add  value 1 to the variable Income and assigned it into Inc
oj$logInc<-oj$INCOME+1
oj<-mutate(oj,logInc=INCOME+1)
#7. Find the Mean price of juice across brands : 
# and assign the name is 'agg'
agg<-aggregate(oj$price,by=list(oj$brand),mean)

#agg<-group_by(oj,brand)%>% summarize(mean(price))   # dplyr package

#8. Rename the column names as 'Group_wise' , 'avg_price'  in agg variable.
names(agg)<-c("Groupwise","avg_price")

#9. Remove the column price from the data
oj<-select(oj,-price)

##--------------Handling Missing values------------##
#10.Find the missing values in the airquality data set and
#replace the missing values in the column Ozone by the mean value.

data()   # get datasets in R
air<-airquality
sum(is.na(air$Ozone))
air$Ozone[is.na(air$Ozone)]<-mean(air$Ozone,na.rm=TRUE)

summary(air)


#Missing Values ? "NA"
#  Treatment of missing values ? - "AFTER TREATMENT YOU SHOULD HAVE SIZEABLE AMOUNT OF DATA FOR MODELLING"
#                                - "DEFAULT IS IGNORE, If problem - Impute 
#  1) Impute - 
#  2) Ignore - (delete the row having missing value)
#  3) Delete the col having missing values - 

#   I have 10000 records & 20% of records are missing - Impute
#   I have    1   million records & 20% is missing    - Ignore 

# How to check the effectiveness of treatment 
# When to check mean, median and mode ?
# If data is not skewed (not having extreme values) - Mean 
# else check median 
# MODE is only for categories 
