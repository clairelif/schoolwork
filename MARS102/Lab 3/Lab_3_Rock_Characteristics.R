library(ggplot2)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 3")
metamorphic.cs<-read.csv('Metamorphic_data.csv')

ggplot(data= metamorphic.cs, 
       mapping = aes(x = Temperature, y = Pressure, color=as.factor(Color)))+
  geom_line(size= 2)+
  scale_color_manual(values = c("blue", "grey", "red"))+
  xlab("Temperature")+ 
  ylab("Pressure")+ 
  ggtitle("Metamorphic Rocks")+ 
  labs(color="color")+
  scale_y_reverse() 