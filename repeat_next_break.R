# repeat, next and break

# repeat seems to not be the most useful for stats code

# Next can skip iterations though

for(i in 1:100){
  if(i <=20){
    # skip the first 20 iterations
    next
  }
  # do something here 
}

# when reading a csv or xlsx?
# trying to import tha csv file then print out the first 10 rows but not working like that
data <- read.csv('data_deaths.csv')
for(i in nrow(data['deaths'])){
  if(i <= 10){
    print(i)
    next
  }
}

