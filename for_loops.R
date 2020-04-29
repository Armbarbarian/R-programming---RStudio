# for loops
# we use{ } instead of : in R
# closer to C and C++ I would say?

for(i in 1:10) {
  print(i)
}

# different ways to use the loop
# 1
letter <- c('a', 't', 'g', 'c')
for(i in 1:4) {
  print(letter[i])
}

#2
for(i in seq_along(letter)){
  print(letter[i])
}

#3
# this is most familiar compared to Python
# only difference is the curly braces here
for(x in letter) {
  print(x)
}

#4
# more simple in one line of code, seems odd
for(i in 1:4) print(letter[i])

# Nested for loops in matrices
# remember thaT R fills columns first then rows, nums 1-6 with 2 rows and 3 cols
mx <- matrix(1:6, 2, 3) # 1st state how many rows then cols, X axis then Y axis, like python
mx

# examples in lesson is using no. 2 example
for(i in seq_len(nrow(mx))) {
  for(j in seq_len(ncol(mx))){
    print(mx[i, j])
  }
}

'
[1] 1
[1] 3
[1] 5
[1] 2
[1] 4
[1] 6
'

# trying to use the no. 3 option
# this works!
for(i in nrow(mx)){
  for(j in col(mx)){
    print(mx[i, j])
  }
}
'
[1] 2
[1] 2
[1] 4
[1] 4
[1] 6
[1] 6
'
# write a short for loop for the 28th deaths csv file
# loop over the deaths and show countries with more than 50 deaths on the 28th
# read in file (now in a data.frame format)
april28 <- read.csv('28th_April_data_deaths.csv')

# the below gives boolean matrix for all the values
# has printed TRue or False...
for(value in april28['deaths']){
  print(value > 50)
}

# again
# this printed a matrix of the deaths with integers?
for(value in april28['deaths']){
  if(value > 50){
    print(value)
  }
}

