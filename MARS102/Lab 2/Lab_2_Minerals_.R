library(ggplot2)

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 2")
groups<-read.csv('scatter_3groups.csv')

ggplot(data= groups,
       mapping = aes(x = Fe, y = Temperature, color=as.factor(Group)))+
  theme(plot.title = element_text(hjust=0.5)) +
  geom_point(size= 6)+
scale_color_manual(values = c("forestgreen", "orange", "brown1"))+
  xlab("Fe")+ ylab("Temperature")+ ggtitle("Scatter Plot")+ labs(color="Groups")
  