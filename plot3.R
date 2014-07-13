# source('data_prep.R')

png('plots/plot3.png')

plot(target$Time, target$Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
points(target$Time, target$Sub_metering_2, type='l', col='red')
points(target$Time, target$Sub_metering_3, type='l', col='blue')
legend('topright', lty=c(1,1), col=c('black', 'blue', 'red'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()
