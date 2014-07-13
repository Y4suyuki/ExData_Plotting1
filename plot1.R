# source("data_prep.R") # if not data is loaded
png(file="plots/plot1.png")
hist(target$Global_active_power, col='red', breaks=13, xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
