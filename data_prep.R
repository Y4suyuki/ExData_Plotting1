colClasses = c("Date"="character", 
               "Time" = "character",
               "Global_active_power" = "numeric",
               "Global_reactive_power" = "numeric", 
               "Voltage" = "numeric", 
               "Global_intensity"="numeric",
               "Sub_metering_1"="numeric",
               "Sub_metering_2"="numeric",
               "Sub_metering_3"="numeric")
dataset <- read.table('./data/household_power_consumption.txt', sep=';', header=TRUE, colClasses=colClasses, na.strings="?")
dataset$Time <- paste(dataset$Date, dataset$Time)
dataset$Date <- as.Date(dataset$Date, format="%d/%m/%Y")
dataset$Time <- strptime(dataset$Time, format="%d/%m/%Y %H:%M:%S")
target <- subset(dataset, Date == as.Date('2007-02-01') | Date == as.Date('2007-02-02'))



