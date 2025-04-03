setwd("C:/Users/clali/OneDrive/Desktop/EOS_CLASS/Lab 9")
Fauna<-read.csv('fishcatch.csv')

lbls <- paste(Fauna$Species_Name, Fauna$frequency)
pie(Fauna$frequency, labels = lbls, main="Ocean Life Fauna", col=rainbow(length(lbls)))
