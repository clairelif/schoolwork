library(ggplot2)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 6")
ENSO_data.cs<-read.csv('ENSO.csv')

Positive_ENSO<-pmax(ENSO_data.cs$ANOM, 0)
Negative_ENSO<-pmin(ENSO_data.cs$ANOM, 0)

dt<-ISOdatetime(ENSO_data.cs$YR, ENSO_data.cs$MON,1,0,0,0)

#initiating ggplot plot,
ggplot()+
  #setting the color of the background to white (instead of gray)
  theme(plot.title = element_text(hjust=0.5)) +
  ggtitle("ENSO Index Plot")+ 
  #next telling R to plot Positive_ENSO data
  geom_line(aes(x=dt, y = Positive_ENSO)) +
  #next telling R to fill the area below the line with red color, note that we specify the minimal as 0 and maximum value is Positive_ENSO
  geom_ribbon(aes(x=dt, y = Positive_ENSO,ymin=0,ymax=Positive_ENSO), fill="red")+
  #next telling R to plot Negative_ENSO data
  geom_line(aes(x=dt, y = Negative_ENSO)) +
  #next telling R to fill the area below the line with red color, note that we specify the minimal as Negative_ENSO and maximum value as 0
  geom_ribbon(aes(x=dt, y = Negative_ENSO,ymin=Negative_ENSO,ymax=0), fill="blue") +
  #Plotting several horizontal lines
  geom_hline(yintercept=2, linetype="dashed", color = "red", size=2)+
  geom_hline(yintercept=1.5, linetype="dashed", color = "red", size=1.5)+
  geom_hline(yintercept=1, linetype="dashed", color = "red", size=1)+
  geom_hline(yintercept=-2, linetype="dashed", color = "blue", size=2)+
  geom_hline(yintercept=-1.5, linetype="dashed", color = "blue", size=1.5)+
  geom_hline(yintercept=-1, linetype="dashed", color = "blue", size=1)+
  #adding text to the graph
  annotate("text",x=dt[400], y=2.5, label= "El Niño", color = "red", size=6)+
  annotate("text",x=dt[400], y=-2.5, label= "La Niña", color = "blue", size=6)+
  #creating X label and Y label
  ylab("ENSO Index") +  xlab("Year")
