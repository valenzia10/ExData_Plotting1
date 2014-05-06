# Author: E. Valencia
# May 2014
# Script to create plot3.png

# We will only be using data from the dates 2007-02-01 and 2007-02-02
dat <- read.table('household_power_consumption.txt',sep=';',skip=66637,nrows=2880)

# Format date
dates <- strptime(paste(dat[,1],dat[,2]), "%d/%m/%Y %H:%M:%S")

# Open png device
png('plot3.png')

# Create plot and add 2 more lines
plot(dates,dat[,7],type='l',col='black',ylab='Energy sub metering', xlab='')
lines(dates,dat[,8],type='l',col='red',ylab='Energy sub metering', xlab='')
lines(dates,dat[,9],type='l',col='blue',ylab='Energy sub metering', xlab='')

# Add legend
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=c(1,1,1))

# Close graphics device
dev.off()
