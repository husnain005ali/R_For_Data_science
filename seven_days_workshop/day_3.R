# use the mpg data frame use ggplot2 package----
library(ggplot2)
data(mpg) #import the data set "mpg"

df<-mpg # assign the df variable name
df
# install packages----
install.packages("writexl", dependencies = TRUE)
library(writexl)
#how to save a data frame in excel format----
write_xlsx(df, "mpg.xlsx")
#how to import excel file----
library(readxl)

df1 <- read_excel("mpg.xlsx")
View(df1)
# how to remove the data set----
remove(iris)

#plotting in ggplot2----
ggplot(data = df, mapping = aes(x=cty, y=hwy, col=class))+
  geom_point()+
  facet_wrap(~df$class, nrow  = 2)+#deviding into groups using "nrow" &"ncol"
  theme_bw()+ #change the theme of the graph.
  labs(title = "Group wise classes of cars",
       x = "City", y = "Height", col="Legends")


#data transformation-----
isntall.packages("nycflights13", dependencies = TRUE)
library(nycflights13)
library(tidyverse)

df2 <-nycflights13::flights
df2
summary(df2) #summary statistics.

#how to apply filter-----

jan<-filter(df2, month==1, day==1)
feb<-filter(df2, month==2, day==2)
march<-filter(df2, month==3, day==3)
apral<-filter(df2, month==4, day==4)
may<-filter(df2,month==5, day==5)
jun<-filter(df2, month==6, day==6)
# filter the data in "UA" only
jan1<- filter(df2, month==1, day==1, carrier=="UA")
jan1
# jab ek column me 2 values lene ho to----
jan_feb<- filter(df2, month %in% c(1,2))
jan_feb<- filter(df2, month==1 | month==2)
# sava the different data frame in excel----
write_xlsx(jan, "jan.xlsx")
write_xlsx(feb, "feb.xlsx")
#same like same as jun data set in different files of excel.
#show the number of rows----
nrow(jan)
# using operaters
filter(df2, arr_delay > 120)
filter(df2, arr_delay > 180)
filter(df2, df2$dep_delay  > 120 & df2$dep_delay < 300)
filter(df2, df2$dep_delay  > 120 | df2$dep_delay < 300)


