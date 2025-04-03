library(ggplot2)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 5")
gardens.cs<-read.csv('Flower_Gardens_S.csv')

ggplot(data= gardens.cs, mapping=aes(x = Salinity, y = Depth))+
  geom_point(size=2, color='blue')+
  xlab('Salinity')+ 
  ylab ('Depth')+ 
  ggtitle ('East Flower Gardens Banks Halocline')+ 
  labs(color= 'Color')+
  scale_y_reverse()
