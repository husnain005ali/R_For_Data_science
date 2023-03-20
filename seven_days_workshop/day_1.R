2+2
3+3
4+3

x<-c(2+3+3)
2+x

x<- 3 #pass the the of the variable "x"
y<- 9
z<-x+y #how to store the variable name,s
print(z)

x > y #it is called the conditional operators/statement
x < y

name<- "Fizan" # it is called the character/categorical operators
name
#how to activate repositories--------
setRepositories() # select 1-7 repositories
# how to install packages------
install.packages("readlx")
install.packages("tidyverse", dependencies = TRUE)
# how to activate the packages-----
library(readxl)
library(tidyverse)

data(iris) # use the data set of iris.
length(iris) # show the length of iris.
str(iris) # show the data structure. 
# how to create the plot using the ggplot----
ggplot(iris,aes(Species, Sepal.Width, col=Species))+geom_point()
