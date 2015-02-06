##
## Set working directory to folder with household_power_consumption.txt file
##
setwd("~/Johns Hopkins/Exploratory Data Analysis/Project One/Data")
## Plot 1
##
##  Load all the data after downloading household_power_consumption.txt to working directory
##
fulltable <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
##
## Create datetime column type POSIxlt with original Date and Time columns
##
fulltable$datetime <- strptime(paste(fulltable$Date, fulltable$Time), "%d/%m/%Y %H:%M:%S")
##
## Seperate dates to be used in project One
##
rptdates <- c(as.Date("2007-02-01"), as.Date("2007-02-02"))
rpttable <- fulltable[as.Date(fulltable$datetime) %in% rptdates,]
##
## create plot3.png file for project
##
png("Plot3.png",bg="white")
plot(rpttable$datetime,rpttable$Sub_metering_1,ylab="Energy sub metering",type="l",xlab="")
plot.xy(xy.coords(rpttable$datetime,rpttable$Sub_metering_2),type="l",col="red")
plot.xy(xy.coords(rpttable$datetime,rpttable$Sub_metering_3),type="l",col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()
