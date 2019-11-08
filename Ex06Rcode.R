#1
#open wages.csv file
read.csv(file = "wages.csv", header = TRUE)
#define variable to return lines from
wages <- read.csv(file = "wages.csv", header = TRUE)
#define variable for number of lines to be returned
threerows <- 1:3
#code replicates head function to print first 3 rows
wages[threerows, ]

#2
#load iris.csv file and set file as variable
iris <- read.csv(file = "iris.csv", header = TRUE)
#print last 2 rows in last 2 columns
iris[149:150,4:5]
#get number of obs. for each species
spobs=function(data, speciestype){
  rows=nrow(data[data$Species==speciestype, ])
  return(paste(speciestype, rows))
}
species=unique(iris$Species)
for(i in 1:length(species)){
  print(spobs(iris, species[i]))
}
#get rows with Sepal width > 3.5
iris[iris$Sepal.Width>3.5, ]
#write data for setosa to a csv file
write.csv(iris[iris$Species=="setosa", ], "setosa.csv")
#calculate mean petal length for virginica
vpetlength <- iris[102:150,3]
mean(vpetlength)
#calculate minimum petal length for virginica
min(vpetlength)
#calculate maximum petal length for virginica
max(vpetlength)

