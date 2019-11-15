iris = read.csv("iris.csv", stringsAsFactors = FALSE)
iris

#1 function that returns odd rows of any dataframe passed as an argument
odd=function(data){
  odddata=data.frame()
  for(i in 1:nrow(data)){
    if(i%%2==1){
      odddata=rbind(odddata, data[i,])
    }
  }
  return(odddata)
}
#example
oddrows=odd(iris)
print(oddrows)

#2 number of observations for a given species in a data set
obsspec=function(data, species){
  species.rows=data[data$Species==species,]
  return(nrow(species.rows))
}
#example
obsspec(iris, "setosa")

# data frame for flowers with Sepal.Width > value specified
SWsearch=function(data, value){
  return(data[data$Sepal.Width>value,])
}
#example
over3.4=SWsearch(iris,3.4)
print(over3.4)
