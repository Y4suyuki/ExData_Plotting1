# source('data_prep.R')

png('plots/plot2.png')
with(target, plot(Time, Global_active_power, type='l', xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
