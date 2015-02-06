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
## create plot1.png file for project and view Plot2
##
png("Plot2.png",bg="white")
plot(rpttable$datetime, rpttable$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
