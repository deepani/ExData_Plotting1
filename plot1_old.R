#Data from the UC Irvine Machine Learning Repository,
#Examine how household energy usage varies over a 2-day period in February, 2007.
#Course projet 1 - Exploratory Data Analysis

setwd("D:/2014/FREE_COURSES_&_LEARNING_THINGS/BIG_Data_COURSES/COURSERA_Exploratory_data_analysis/Course_Project1/")
y<-read.table("household_power_consumption_2007_2.txt",head=T,sep=";")
class(y)

# png(filename = "plot1.png",
#     width = 480, height = 480,
#     units = "px", bg = "transparent")
# hist(Global_active_power,
#      col = "red",
#      main = "Global Active Power",
#      xlab = "Global Active Power (kilowatts)",
#      breaks = 12, ylim = c(0, 1200))
# dev.off()





Global_active_power<-na.omit(y$Global_active_power)
png("plot1.png",
    width=480, 
    height=480, units = "px")
hist(Global_active_power,
     main="Global Active Power",
     breaks = 12, 
     ylim = c(0, 1200), 
     col="red", xlab="Global active power(Killowatts)")
dev.off()

# good <- complete.cases(y)
# all_good<-y[good,]
# summary(all_good)

#png("plot.png")
# or tiff("plot.tiff")
hist(Global_active_power, data=household_power_consumption_2007_2.txt")
#hist(subset(all_good,Global_active_power))
#plot(...)
#dev.off()