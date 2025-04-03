#install.packages(c("ncdf4", "raster","sp","DescTools","fields"))

library(ncdf4) # package for netcdf manipulation
library(raster) # package for raster manipulation
library(ggplot2)
library(DescTools) # package for 2d array manipulation
library(fields) # package for modified image function
library(rnaturalearth)
library(rnaturalearthdata)   

world <-ne_countries(scale = "medium")

setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/EOS Bonus R")
nc_data <- nc_open('ct5km_ssta_v3.1_20170830.nc')

lon <- ncvar_get(nc_data, "lon")
lat <- ncvar_get(nc_data, "lat")
ssta <- ncvar_get(nc_data, "sea_surface_temperature_anomaly")

GOM_lat<-lat[1180:1450]
GOM_lon<-lon[1600:2000]
GOM_ssta<-ssta[1600:2000,1180:1450]

GOM_lat1 <- rev(GOM_lat)
GOM_ssta1 <- Rev(GOM_ssta,margin=2)

image.plot(GOM_lon,GOM_lat1,GOM_ssta1,ylab="lat", xlab="lon")
plot(world,add=TRUE)

nsamples <- 50
colMap <- colorRampPalette(c("blue","aliceblue","darkmagenta"))

image.plot(GOM_lon,GOM_lat1,GOM_ssta1,ylab="lat", xlab="lon")
plot(world,add=TRUE)
title("Sea Surface Temperature Anomaly - Gulf of Mexico")


