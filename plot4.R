# Author: E. Valencia
# May 2014
# Script to create plot4.png

# We will only be using data from the dates 2007-02-01 and 2007-02-02
dat <- read.table('household_power_consumption.txt',sep=';',skip=66637,nrows=2880)

# Format date
dates <- strptime(paste(dat[,1],dat[,2]), "%d/%m/%Y %H:%M:%S")

# Open png device
png('plot4.png')

# Divide device in 4 regions (2 rows by 2 columns)
par(mfrow=c(2,2))

# Create plot 1 - top left
plot(dates,dat[,3],type='l',ylab='Global Active Power',xlab='')

# Create plot 2 - top right
plot(dates,dat[,5],type='l',ylab='Voltage',xlab='datetime')

# Create plot 3 and add 2 more lines - bottom left
plot(dates,dat[,7],type='l',col='black',ylab='Energy sub metering', xlab='')
lines(dates,dat[,8],type='l',col='red',ylab='Energy sub metering', xlab='')
lines(dates,dat[,9],type='l',col='blue',ylab='Energy sub metering', xlab='')

# Add legend to plot 3
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=c(1,1,1))

# Create plot 4 - bottom right
plot(dates,dat[,4],type='l',ylab='GLobal_reactive_power',xlab='datetime')

# Close graphics device
dev.off()
