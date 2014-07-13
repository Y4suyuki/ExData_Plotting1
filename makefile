data/household_power_consumption.zip:
	curl -o data/household_power_consumption.zip 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
data/household_power_consumption.txt: data/household_power_consumption.zip
	unzip data/household_power_consumption.zip -d data
	touch data/household_power_consumption.txt
