data<-read.csv(file.choose(),header=T)
View(data)
library(dplyr)
data1<-filter(data,City=="Kolkata")
View(data1)
precovid<-data1[448:691,c(1,2,15)]
View(precovid)
postcovid<-data1[692:814,c(1,2,15)]
View(postcovid)
histogram1<-barplot(precovid$AQI,xlab="date(2019-07-01 to 2020-02-29)",ylab="precovid air quality index",title="precovid barplot")
histogram2<-barplot(postcovid$AQI,xlab="date(2020-03-01 to 2020-07-01)",ylab="postcovid air quality index",title="precovid barplot")
