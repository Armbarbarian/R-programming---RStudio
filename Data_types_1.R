x <- 1
x
msg <- 'Hello'
msg



x <- 1:20
x 


# vectors
# contain objects in the same class
x <- vector()
# numbers
# 1 is a numeric object 
# 1L is an integrer 
number <- 1
numberL <- 1L

# Attributes
# parts of an object

# C() function
# creats vectors of objects
# a sort of list to put things in?
x <- c(0.5, 0.6)

# characters in R not strings?
letter <- c('a', 'b', 'c')
letter

# integers
# this includes the last value, unlike Python
int <- 20:30
int

# blank vectors
# default value is 0
q <- vector('numeric', length = 10)
# 0000000000

# mixing object
# create the least common dinominator
# character > numeric
# numeric > boolean
# character > boolean
# booleans can turn into numeric
# this is coercion of the classes to stop errors

# explicit coercion
# turning one class into another
rndom <- 0:6
class(rndom)
as.numeric(rndom)
as.logical(rndom)
as.character(rndom)

# -----------------------------------------------------------------
# lists
# carry around different types of data as there can be diff. classes here

new_list <- list(1, 'a', T)


# ------------------------------Matrix-----------------------------------
# Matrices are special vectors


m <- matrix(nrow = 2, ncol = 3)
m # gives empty matrix without values inside

dim(m) # call dimensions function on m
attributes(m) # returns list showing dim

# construct a matrix column wise

new_m <- matrix(1:6, nrow=2, ncol=3)
new_m
'[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
'

# transform a vector into a matrix

v <- 1:10
v
# 1  2  3  4  5  6  7  8  9 10

# add a dimension attribute
dim(v) <- c(2, 5) # assign the vector 2, 5
v
'   
      [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10
'
# ---------------------------cbind and rbind---------------
# column binding and row binding

col1 <- 1:3
col2 <- 10:12
cbind(col1, col2)
'
     col1 col2
[1,]    1   10
[2,]    2   11
[3,]    3   12
'
rbind(col1, col2)
'
     [,1] [,2] [,3]
col1    1    2    3
col2   10   11   12
'



# ----------------Factor-------------------
# vector to represent categories
# ordered and unordered
# integer where each  integer has a label
# modelling functions lm(), glm()
# factor() function that needs character as a vector
# integer because it counts how many of each character there is?

new_factor <- factor(c('y', 'y', 'n', 'y', 'n'))
new_factor
# levels are the cataegories?
'
[1] y y n y n
Levels: n y 
'
new_bases <- factor(c('A', 'A', 'G', 'C', 'T'))
new_bases
'
[1] A A G C T
Levels: A C G T
'

# call table() function to give an array of how many of each... useful!
# split the characters in a fasta file to get amount of bases?
# tables() has not changed the original object new_bases
table(new_bases)
'
A C G T 
2 1 1 1
'

# factors will be alphabetical as with ACGT
# can reverse with levels argument


# -----------------Missing Values --------------------------
# is.na()
# is.nan()
# tests if there is missing values in the dataset







#------------------------Data Frames--------------------------

# stores tabular data
# special list
# does not have to be the same type
# different from matrices as matrix has the same class
# read.csv()
# attribute row.names
# called by using read.table() or read.csv()
# convert to matrix by calliung data.matrix()

df <- data.frame(foo = 1:4, bar = c(T, T, F, F))
df
'
  foo   bar
1   1  TRUE
2   2  TRUE
3   3 FALSE
4   4 FALSE
'
nrow(df) # 4
ncol(df) # 2

ndf <- data.frame(chromosome = 1:4, SNP = c(T, F, T, F), phenotype = c('Cancer', 'no change', 'Hypertropy', 'No change'))
ndf
'
  chromosome   SNP  phenotype
1          1  TRUE     Cancer
2          2 FALSE  no change
3          3  TRUE Hypertropy
4          4 FALSE  No change
'

# --------------Names-------------

nlist <- list(a = 1, b = 2, c = 3)
names(nlist)
# [1] "a" "b" "c"


new_matrix <- matrix(1:4, nrow=2, ncol=2)
dimnames(new_matrix) <- list(c('a', 'b'), c('c', 'd'))
new_matrix
'
  c d
a 1 3
b 2 4
'




