# Download data from https://www.kaggle.com/rohanrao/air-quality-data-in-india/download
data<-read.csv(file.choose(),header=T)
View(data)
library(dplyr)
data1<-filter(data,City=="Kolkata")
View(data1)
data1<-data1[448:814,c(1,2,6,9,10)]
View(data1)
summary(data1)
precovid<-data1[1:244,]
View(precovid)
postcovid<-data1[245:367,]
View(postcovid)
NO2<-mean(postcovid$NO2)
NO2
