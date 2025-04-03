  library(ggplot2)
  library(ggtern)
  
  setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 1")
  data_mineral <- read.csv('data_ternary.csv')
  
  ggtern(data = data_mineral, aes(x = Sodium, y = Potassium, z = Calcium)) +  
    geom_point(aes(color = as.factor(Group), shape = as.factor(Group)), size = 3) + 
    ggtitle("Ternary Mineral Plot") +
    theme(plot.title = element_text(hjust=0.5)) +
    scale_color_manual(values = c("forestgreen", "brown1", "darkorchid1"))
  
