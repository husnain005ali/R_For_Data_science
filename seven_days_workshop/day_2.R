## Data visualization and plotting in R-----
# install package----
install.packages("ggplot2",dependencies = TRUE)
library(ggplot2) # activate the package
# import the built in data set----
data("iris") # call the data set of "iris".
View(iris)# show the data set of "iris"
#creat the point plot----
ggplot(data = iris, mapping = aes(x=Sepal.Length, y=Sepal.Width))+
  geom_point() #if you don't know how the variables in your data to use "$" e.g(iris$)
# Adding color----
ggplot(data = iris, mapping = aes(x=Sepal.Length, y=Sepal.Width, col=Species))+
                                 geom_point() 
#(ctrl+shit+6) to zoom view of your plot----
#changes in based in size----
ggplot(data = iris, mapping = aes(x=Sepal.Length, y=Sepal.Width,size=Species))+
                                  geom_point()
#changes in based in shapes----
ggplot(data = iris, mapping = aes(x=Sepal.Length, y=Sepal.Width,shape=Species))+
                                  geom_point()
#changes in based in shape and color. imp*(only one thing to use is shape or color don't use both of you)----
ggplot(data = iris, mapping = aes(x=Sepal.Length, y=Sepal.Width, shape=Species, col=Species))+
                                 geom_point()

ggplot(data = iris, mapping = aes(x=Sepal.Length, y=Sepal.Width,shape=Species, col=Species))+# if changes in variables size to changes in mapping.
                                  geom_point(size=3)# if the changes in point size to geom in side 

#import the mpg dataset----
data(mpg)
View(mpg)
p1<-ggplot(data=mpg, mapping = aes(x=cty , y=hwy, col=manufacturer))+geom_point()
p1
#how to save the hight quality plot in pdf----
ggsave("mpg_plot.pdf", plot = p1, width = 6, height = 5, units = "in") #width & height changes up to you.

#how to save the hight quality plot in png----
ggsave("mpg_plot.png", plot = p1, width = 6, height = 5, units = "in" , dpi = 300) #width & height changes up to you.

# use tidyverse to use data wrangling(to changes of our intrust).----
library(tidyverse)
# ctl+shift+m to show the pip operater sing----
iris %>% select(iris$Species=="setosa")