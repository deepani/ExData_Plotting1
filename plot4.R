#Data from the UC Irvine Machine Learning Repository,
#Examine how household energy usage varies over a 2-day period in February, 2007.
#Course projet 1 - Exploratory Data Analysis


#data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
setwd("D:/2014/FREE_COURSES_&_LEARNING_THINGS/BIG_Data_COURSES/COURSERA_Exploratory_data_analysis/Course_Project1/")
#read.data command to import the file
y<-read.table("household_power_consumption_2007_2.txt",head=T,sep=";",dec=".")
class(y)

subSet<- y[y$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Global_active_power<-na.omit(y$Global_active_power)
Global_active_power<-as.numeric(Global_active_power)
subMetering1 <- as.numeric(y$Sub_metering_1)
subMetering2 <- as.numeric(y$Sub_metering_2)
subMetering3 <- as.numeric(y$Sub_metering_3)
voltage<-as.numeric(y$Voltage)
Global_reactive_power<-as.numeric(y$Global_reactive_power)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()


