library(ggplot2)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 4")
metamorphic.cs<-read.csv('geothermal.csv')

geothermal.csv<-read.csv('geothermal.csv')
ggplot(data= geothermal.csv, mapping=aes(x = Temp, y = Depth))+
  theme(plot.title = element_text(hjust=0.5)) +
  geom_point(size=2)+
  geom_line(color="blue")+
  xlab('Temperature')+ 
  ylab ('Depth')+ 
  ggtitle ('Geothermal Gradient')+ 
  labs(color= 'Color')+
  scale_y_reverse()
