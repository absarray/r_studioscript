# import data
#library(readxl)
#Demand <- read_excel("C:/Users/TOSHIBA/Desktop/Data_Statistical_Analysis_Workshop.xlsx",sheet = "Peak Demand")

# create plot
plot(seq(1,length(Demand$Date)), Demand$NR, xaxt="n", type = "l", xlab = "X title", ylab = "Y Title", main = "Main Heading", col="red")

# add a line to the current plot
lines(seq(1,length(Demand$Date)), Demand$WR, col="blue")

# set plotting dates
dates <- seq.Date(from = as.Date(min(Demand$Date)), to = as.Date(max(Demand$Date)), by="3 months")

# tick position indices
xtick = match(as.character(dates), as.character(Demand$Date))

# plot ticks
axis(side=1, at=xtick,labels = FALSE)

# plot axis tick labels
text(x=xtick, par("usr")[3], labels = as.character(Demand$Date[xtick]), srt = 50, pos = 1,offset = 2, xpd=TRUE)

# add a legend
legend("topleft", legend=c("NR", "WR"), col=c("red", "blue"), lty=c(1,1), cex=0.8)