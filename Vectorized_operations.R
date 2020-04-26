# many operations are vectorized making code efficient, consise and easier to read
# things happen in parallel
# add 1st with 1st and 2nd with 2nd element in different objects
# in other languages you would have to write a for loop for this.. easier to do

# operations = + - / *

x <- 1:4
y <- 6:9
x+y # 7  9 11 13

# iterates through all the vector objects in x and compares to 2
x > 2 # FALSE FALSE  TRUE  TRUE
x >= 2 # FALSE  TRUE  TRUE  TRUE
y == 8 # FALSE FALSE  TRUE FALSE
x * y # 6 14 24 36
x / y # 0.1666667 0.2857143 0.3750000 0.4444444


# ------------Matrix -----------------------------
# add subtract multiply divise matricies together:

# 1,1 of x multiplied by 1,1 of y etc etc....
mx <- matrix(1:4, 2, 2); my <- matrix(rep(10, 4), 2, 2)
mx * my # not a matrix multiplication, element wise multiplication
'
     [,1] [,2]
[1,]   10   30
[2,]   20   40
'

mx / my
'
     [,1] [,2]
[1,]  0.1  0.3
[2,]  0.2  0.4
'

# true matrix multiplication
# %*% is the matrix multiplication symbol
mx %*% my
'      [,1] [,2]
[1,]   40   40
[2,]   60   60
'





