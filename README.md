## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

* You may find it useful to convert the Date and Time variables to
Date/Time classes in R using the `strptime()` and `as.Date()`
functions.

* Note that in this dataset missing values are coded as `?`.


## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. Your task is to
reconstruct the following plots below, all of which were constructed
using the base plotting system.

First you will need to fork and clone the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)


For each plot you should

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels.

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. Your code file **should include code for reading
the data** so that the plot can be fully reproduced. You should also
include the code that creates the PNG file.

* Add the PNG file and R code file to your git repository

When you are finished with the assignment, push your git repository to
GitHub so that the GitHub version of your repository is up to
date. There should be four PNG files and four R code files.


The four plots that you will need to construct are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 
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
## create plot1.png file for project
##
png("plot1.png", width=480, height=480, bg="white")
hist(rpttable$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 
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
## create plot2.png file for project
##
png("Plot2.png",bg="white")
plot(rpttable$datetime, rpttable$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 
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


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 
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
## create plot4.png file for project
##
png("Plot4.png",bg="white")
par(mfrow=c(2,2))
plot(rpttable$datetime,rpttable$Global_active_power,ylab="Global Active Power",type="l",xlab="")
plot(rpttable$datetime,rpttable$Voltage,ylab="Voltage",type="l",xlab="datetime")
plot(rpttable$datetime,rpttable$Sub_metering_1,ylab="Energy sub metering",type="l",xlab="")
plot.xy(xy.coords(rpttable$datetime,rpttable$Sub_metering_2),type="l",col="red")
plot.xy(xy.coords(rpttable$datetime,rpttable$Sub_metering_3),type="l",col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
plot(rpttable$datetime,rpttable$Global_reactive_power,ylab="Global_reactive_power",type="l",xlab="datetime")
dev.off()

