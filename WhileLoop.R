# While loops
# can make the code more readable as you know when the code should stop

count <- 0
while(count < 10){
  print(count)
  count <- count + 1
}

# be careful as they can result in infinite loops, like in python

# below code is different every time because the loop is going on account of a random num gen.
z <- 5

while(z >= 3 && z <=10){
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if (coin == 1){
    z <- z + 1
  } else{
    z <- z -1
  }
}

# a while loop in the context of bio or data? no clue