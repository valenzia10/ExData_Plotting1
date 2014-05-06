# Author: E. Valencia
# May 2014
# Script to create plot2.png

# We will only be using data from the dates 2007-02-01 and 2007-02-02
dat <- read.table('household_power_consumption.txt',sep=';',skip=66637,nrows=2880)

# Format date
dates <- strptime(paste(dat[,1],dat[,2]), "%d/%m/%Y %H:%M:%S")

# Open png device
png('plot2.png')

# Create plot
plot(dates,dat[,3],type='l',ylab='Global Active Power (kilowatts)',xlab='')

# Close graphics device
dev.off()
