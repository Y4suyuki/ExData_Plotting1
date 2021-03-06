# source('data_prep.R')
png('plots/plot4.png')
par(mfrow=c(2,2))
with(target, {
    plot(Time, Global_active_power, type='l', xlab="", ylab="Global Active Power")
    plot(Time, Voltage, type='l', xlab='datetime', ylab='Voltage')
    plot(Time, Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
    points(Time, Sub_metering_2, type='l', col='red')
    points(Time, Sub_metering_3, type='l', col='blue')
    legend('topright', bty="n",lty=c(1,1), col=c('black', 'blue', 'red'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
    plot(Time, Global_reactive_power, type='l', xlab="", ylab="Global Rective Power")
})
dev.off()