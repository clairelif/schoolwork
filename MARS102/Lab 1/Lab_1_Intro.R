library(ggplot2)
library(ggtern)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 1")
data_mineral<-read.csv('data_ternary.csv')

#initiating ternary diagram, note that when the command takes lots of arguments you can  
#connect them with + sign, instead of typing everything in one line
  #setting the color of the background to white (instead of gray)
  theme_bw() +
  #now you’re plotting your data with points, specifying that the data is taken from data_mineral array
  geom_point(data = data_mineral, 
             #then you specifying which of the vectors would represent X, Y and Z axes
             #in our case it's Sodium for X, Potassium for Y and Calcium for Z; then you say to R that you want to have
             #different colors and shapes of your dots which are specified by the Group column; 
             #finally you selecting the size of dots with size command and setting it to 3
             aes(x = Sodium, y = Potassium, z = Calcium, color=as.factor(Group), shape=as.factor(Group) ), size = 3)+
  #last line is to selecting the colors manually for your dots
  scale_color_manual(values = c("forestgreen", "brown1", "darkorchid1"))

