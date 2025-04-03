library(ggplot2)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 8")
CarbonPumpData<-read.csv('CarbonPumpData.csv')

ggplot(data= CarbonPumpData, aes(x= DIC, y=Depth, color=as.factor(Ocean)))+
  geom_point(size=2)+
  geom_path()+
  xlab('DIC umol/Kg)')+
  ylab ('Depth (Km)')+
  ggtitle ('Carbon Pump Data')+
  labs(color= 'Oceans')+
  scale_y_reverse(breaks=seq(0,5, 0.5))+
  scale_x_continuous()+
  theme_bw()