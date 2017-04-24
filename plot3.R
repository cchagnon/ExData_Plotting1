## 
## JHU Science Specialization, Exploratory Data Analysis
## Peer-graded Assignment: EDA Course Project 1, Part 3
## Created by: cchagnon
## Created on: 2017-04-24
## 

## Download and unzip the data for the project
# srcURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# download.file(srcURL, "data\\household_power_consumption.zip")
# unzip(zipfile="data\\household_power_consumption.zip")

# # - Read the source data
# hpc <- read.csv2("data\\household_power_consumption.txt", sep=";")
# 
# # - Prepare column formats
# hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
# hpc <- subset(hpc, Date=="2007-02-01" | Date=="2007-02-02")
# hpc <- transform(hpc, DateAndTime=as.POSIXct(paste(Date, Time)))

# - Reset to single plot
par(mfrow=c(1,1))

# - Generate plot with added elements
with(hpc, plot(DateAndTime, as.integer(as.character(Sub_metering_1)), type="l", xlab="", ylab="Energy sub metering"))
with(hpc, lines(DateAndTime, as.integer(as.character(Sub_metering_2)),col="red"))
with(hpc, lines(DateAndTime,as.integer(as.character(Sub_metering_3)),col="blue"))
legend("topright", legend=c("Sub_metering_1          ","Sub_metering_2          ", "Sub_metering_3          "), col=c("black","red","blue"), lty=c(1,1), lwd=c(1,1))

# - Copy plot to png file
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()

