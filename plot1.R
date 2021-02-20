#Reading Data
tempData<-tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", tempData)
plotData<- read.table(unzip(tempData),sep=";")
names(plotData) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(plotData,plotData$Date=="1/2/2007" | plotdata$Date =="2/2/2007")

#Histogram for Global Active Power
hist(as.numeric(as.character(subpower$Global_active_power)), col="red", main="Global Active Power",xlab="Global Active Power(kilowatts)")

#Title Graph
title(main="Global Active Power")
