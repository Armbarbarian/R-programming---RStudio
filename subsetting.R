# basically using [] and [[]] correctly
# [] subsets returns an object of the same class as the original
# [[]] extract from a list or df, may not be the same class/object
# $ extract object oif a list of df by name, semantics are similar
# positions start from 1 not 0 like in python

x <- c('a', 'b', 'c', 'c', 'd', 'a')
x[1] # 'a'
x[1:4] # "a" "b" "c" "c"
x[x > 'a'] # "b" "c" "c" "d"

u <- x > 'a'
u # FALSE  TRUE  TRUE  TRUE  TRUE FALSE
x[u] # "b" "c" "c" "d"


# ------------------Lists-------------------
# cn use [[]] or $

nlist <- list(foo = 1:4, bar = 0.6, baz = 'safe')
nlist[1] # $foo 1 2 3 4 - a list return
nlist[[1]] # 1 2 3 4 - just the sequence?

# using names
nlist$bar # 0.6
nlist[['bar']] # 0.6 - this is the value I want
nlist['bar'] # $bar 0.6 - this is a list

# want multiple elements of a list?
# single brackets to get first and third elements in the list, returns a list []
nlist[c(1, 3)]
'
$foo
[1] 1 2 3 4

$baz
[1] "safe"
'

# CANNOT USE [[]] OR $ TO GET MULTIPLE ELEMENTS OF A LIST

# SPECIFIC VALUES OF LISTS WITHIN LISTS?
xlist <- list(a = list(10, 12, 14), b = c(3.14, 2.81) , c = c('A', 'T', 'G', 'C'))
xlist[[c(1, 3)]] # 14 - 3rd element in 1st element
xlist[[1]][[3]] # 14 - same as above code?
xlist[[c(2, 1)]] # 3.14

# ---------------Matricies------------------
# 1st number is the row and 2nd is the column index
# like x axis then y axis when subsetting
# although matrices get filled up by columns by default...weird

mx <- matrix(1:6, 2, 3) # values 1:6, with 2 rows and 3 cols
'
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
'
mx[1, 2] # 3 - 1st row 2nd col
mx[2, 1] # 2 - 2nd row 1st col

# indices can be missing like in Python
mx[1, ] # 1, 3, 5 - only the 1st row
mx[, 2] # 3, 4 - only the 2nd col

# DIFFERENT USING [] WITH MATRICES AS YOU DO NOT GET MATRIX RETURN
# YOU GET A VECTOR WITH THAT VALUE AND THATS IT
# BY DEFAULT THERE IS A DROP=TRUE ARGUMENT WHICH LOWERS THE DIMESIONS
# CAN SAY DROP=FLASE TO GET A MATRIX BACK FOR WHATEVER REASON

mx[1, 2, drop=F] # wouldn't really need to do this
'
     [,1]
[1,]    3
'
# same with getting entire rows with multiple evalues
mx[1, , drop=F]
'
    [,1] [,2] [,3]
[1,]    1    3    5
'






