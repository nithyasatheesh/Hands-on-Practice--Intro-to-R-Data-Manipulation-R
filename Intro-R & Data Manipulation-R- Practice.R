### Hands-on practice in Data structures-R

##-------------- Vector-----------------------#

#1. Create a vector V with numeric values

#2. Add each element in vector V with 10

#3. Extract the values 2.1 and 3.3 from the vector x<-c(2.1,4.2,3.3,5.4)

#4. What is the result of x[-c(3,1)]

#5. What is the output of x[]

###-------------------------------------------------------###
###------------------Matrix------------------------------###

# 1. Create a matrix x with 9 integers of no of rows is 3 and give colnames as A,B,C
# Select rows 1 & 2 and columns 2 & 3 from the matrix x
 
###-----------------------------------------------------##
##------------- Array----------------------------------##
# Create an array of 25 elements by using array()

# Assign dim names by using dimnames()

###-----------------------------------------------###
##----------------List---------------------------###
#1. Create a list x from the given two vector objects p and q
# p <- c(2,7,8),q <- c("A", "B", "C") 
# And find the value of x[2]

#2.If b <- list(a=1:10, c="Hello", d="AA"), write an R expression that
# will give all elements, except the second, of the first vector of b.

#3.Let x <- list(a=5:10, c="Hello", d="AA"), write an R statement 
# to add a new item z = "NewItem" to the list x.

#---------------------------------------------#
##---------------DataFrame--------------#

# Create a simple data frame from 3 vectors. 
# Order the entire data frame by the first column.

##------------------------------------------#
## ----------------- Data Manipulation -R ---------------------##
## Data set: oj.csv----------------------------------##
#1. Set your working directory
#2. Load Csv file and and name it as 'oj'
#3. View first 6 observations
#4. Check the descriptive statistics
#5. Select the rows where the brand bought is Tropicana and  
     #no feature advertisement is run from the columns week and store.
#6.Add  value 1 to the variable Income and assigned it into Inc 
#7. Find the Mean price of juice across brands : 
# and assign the name is 'agg'
#8. Rename the column names as 'Group_wise' , 'avg_price'  in agg variable.
#9. Remove the column price from the data

##-----------------------------------------------##
##--------------Handling Missing values------------##
#10.Find the missing values in the airquality data set and
#11.Replace the missing values in the column Ozone by the mean value.

data()   # get datasets in R
air<-airquality

