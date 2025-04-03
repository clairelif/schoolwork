library(ggplot2)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 10")
CO2<-read.table('surface-flask-data.txt', header = FALSE, sep = "", dec = ".")

dt<-ISOdatetime(CO2$v2, CO2$v3,1,0,0,0)
ggplot(CO2, mapping = aes(x = V2, y = V4))+ geom_line()+
  geom_line(size = 1, color = "red")+
  xlab('Year')+ ylab ('Atmospheric CO 2')+ ggtitle ('The Keeling Curve')+
  theme(plot.title = element_text(hjust=0.5))
  