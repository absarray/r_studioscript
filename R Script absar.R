read.csv(file.choose(),header=TRUE)->WRDEMAND
WRDEMAND[-c(1), ]
WRDEMAND<-WRDEMAND[-c(1),]
hist(WRDEMAND$WR)
WRDEMAND <- subset(WRDEMAND, select = c(Date,NR,WR))

#boxplot and adding axis title and title of the chart
boxplot(WRDEMAND$NR,WRDEMAND$WR,main="BOx Plot of WR Vs NR",xlab="Region",ylab="Demand(MW)")
#adding the col of the fonts on title and axes
boxplot(WRDEMAND$NR,WRDEMAND$WR,main="BOx Plot of WR Vs NR",xlab="Region",ylab="Demand(MW)",col.main="red",col.lab="green")
#font size
boxplot(WRDEMAND$NR,WRDEMAND$WR,main="BOx Plot of WR Vs NR",xlab="Region",ylab="Demand(MW)",col.main="red",col.lab="green",font.main=14,font.lab=7)
#for removing yticks
yaxt="n"