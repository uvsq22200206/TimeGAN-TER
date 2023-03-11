library(ggplot2)

setwd("D:/Coding Stuffs/TER/Official Code (changed)/TimeGAN/data")

#### DATA LOADING

#energy<-read.csv("energy_data.csv")
#Energy data is unused for the moment

stock<- read.csv("GOOG.csv")

#Setting the Date column as a date in the stock data
stock$Date<-as.Date(stock$Date)

#creating vectors out of each column, entirely for convenience

open<-stock$Open
high<-stock$High
low<-stock$Low
close<-stock$Close

#the data is in the range of 2 to 70 on the y axis. This was checked using the min and max funcitons in R


#Dataviz

#I am using ggplot2 to create a line graph containing all the stock data, 
#color coded in a legend. Each geom_line is for a column to be represented on the y-axis. the x-axis will be for the days


plot_stock<-ggplot(stock, aes(x=Date)) +
  geom_line(aes(y=open, color = "open"))+
    geom_line(aes(y=high, color = "high"))+
    geom_line(aes(y=low, color = "low"))+
    geom_line(aes(y=close, color = "close"))+
    labs(title = "Stock Data Plot", x ="Day", y="Stock Value")+
  ylim(2,70)

plot_stock #to create the plot and show it in the console

#Saving the plot as a PNG

ggsave("stockTS.png", plot = plot_stock, height = 16, width = 40, dpi = 300)
