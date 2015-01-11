#Data from the UC Irvine Machine Learning Repository,
#Examine how household energy usage varies over a 2-day period in February, 2007.
#Course projet 1 - Exploratory Data Analysis

#setting the default drive
setwd("D:/2014/FREE_COURSES_&_LEARNING_THINGS/BIG_Data_COURSES/COURSERA_Exploratory_data_analysis/Course_Project1/")
#read.data command to import the file
y<-read.table("household_power_consumption_2007_2.txt",head=T,sep=";")
class(y)

# Removing missing information
Global_active_power<-na.omit(y$Global_active_power)
#Output to a file plot1.png
png("plot1.png",
    width=480, 
    height=480, units = "px")

#Creating the Histrogram
hist(Global_active_power,
     main="Global Active Power",
     breaks = 12, 
     ylim = c(0, 1200), 
     col="red", xlab="Global active power(Killowatts)")
dev.off()
