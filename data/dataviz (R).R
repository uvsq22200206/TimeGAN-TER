library(ggplot2)
setwd("D:/Coding Stuffs/TER/Official Code (changed)/TimeGAN/data")
#energy<-read.csv("energy_data.csv")
stock<- read.csv("GOOG.csv")


#Datavis work

plot.ts(stock$Open)

ggplot(stock, aes(x="day"))
