data <- read.csv('hw1_data.csv') # read in hw file
head(data) # what are the column names
colnames(data) # "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day" 
nrow(data) # 153 rows
data$Ozone[47] # number in ozone column in row 47 = 21




# -------------------- Q 16 -----------------------------------
# MY WAY WAS WRONG

# how many Na values are in the csv file data
# using is.na()
none <- is.na(data)#? helpful
len <- data$Ozone[none]
len
length(len) # 44

true_values <- complete.cases(data)


# --------------------------- Github answer Q 16----------------------
# Going back to data.frame because dont it hasnt been taught yet in this specialization
hw1 = read.csv('hw1_data.csv')
sub = subset(hw1, is.na(Ozone))
nrow(sub) # 37
# Can also remmove Missing Values using Something like This
hw1[complete.cases(hw1),]



# --------------------------- Github answer Q 17----------------------

hw1 = read.csv('hw1_data.csv')
sub = subset(hw1, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean)


# Using complete.cases for dataframes
good <- complete.cases(data)
x <- data$Ozone[good]
length(x)
153 - 111 # 42

# closest answer is 43 on Coursera.. chose that 1st time around

# find the mean from the column
# 42.1 is the answer, got it first time!!!!
mean(data$Ozone[good])

# --------------------------------------------- Q 18 ------------------------------------------

# Q18. Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset?
# 334, 185.9, 205.0, 212.8 ????

#-------------below doesn't work
first <- data$Ozone[data > 31]
second <- complete.cases(ozone31)
bad <- is.na(second)
first[!bad] # no working because this is for a matrix not a DF
# ---------------------------


# via data frames have to use complete.cases()
good <- complete.cases(data)
data$Ozone[good] # on the right track here...
'
  [1]  41  36  12  18  23  19   8  16  11  14  18  14  34   6  30  11   1  11   4  32  23  45 115
 [24]  37  29  71  39  23  21  37  20  12  13 135  49  32  64  40  77  97  97  85  10  27   7  48
 [47]  35  61  79  63  16  80 108  20  52  82  50  64  59  39   9  16 122  89 110  44  28  65  22
 [70]  59  23  31  44  21   9  45 168  73  76 118  84  85  96  78  73  91  47  32  20  23  21  24
 [93]  44  21  28   9  13  46  18  13  24  16  13  23  36   7  14  30  14  18  20
'

# maybe not put into lists???
Oz_list <- list(data$Ozone[good])
Oz_list[Oz_list > 31] # Error: 'list' object cannot be coerced to type 'double'

data$Ozone

# ---------------------------------------------Github Answer Q 18 ------------------------------------------

quiz_data = read.csv('hw1_data.csv')
sub = subset(quiz_data, Ozone > 31 & Temp > 90, select = Solar.R)
apply(sub, 2, mean)


# ----------------------------- Q 19 ---------------------------
# what is the mean of Temp when Month is equal to 6?
# coppied from above example.... didn't teach us this in class....

new_sub <- subset(quiz_data, Month == 6, select = Temp)
new_sub
apply(new_sub, 2, mean)

# -------------------- Q 20 ------------------------------
# What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
# using the !is.na(Ozone) to get all values that aren't NA values in the subset
max_oz_may <- subset(quiz_data, Month == 5 & !is.na(Ozone), select = Ozone)
ans <- apply(max_oz_may, 2, max) #  gets the max value
ans # 115












