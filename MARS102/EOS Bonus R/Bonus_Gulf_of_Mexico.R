setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/EOS Bonus R")

library(ggplot2)
library(sf)
library("rnaturalearth")
library("rnaturalearthdata")                 
library("ggspatial")
library("viridis")

world <-ne_countries(scale = "medium", returnclass = "sf")

ggplot(data = world) + geom_sf(fill= "pink")+
  theme(panel.grid.major = element_line(color = gray(.5), linetype = "dashed", size = 0.5), panel.background = element_rect(fill = "darkblue"))

ggplot(data = world) + geom_sf(fill= "coral")  + 
  annotate(geom = "text", x = -90, y = 26, label = "Gulf of Mexico", fontface = "italic", color = "grey22", size = 6)+
  annotation_scale(location = "bl", width_hint = 0.5)+
  coord_sf(xlim = c(-102.15, -74.12), ylim = c(15, 34), expand = FALSE) + xlab("Longitude") + ylab("Latitude")+
  ggtitle("Map of the Gulf of Mexico")+
  theme(panel.grid.major = element_line(color = gray(.5), linetype = "dashed", size = 0.5), panel.background = element_rect(fill = "lightblue"))
