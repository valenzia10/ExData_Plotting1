# Author: E. Valencia
# May 2014
# Script to create plot1.png

# We will only be using data from the dates 2007-02-01 and 2007-02-02
dat <- read.table('household_power_consumption.txt',sep=';',skip=66637,nrows=2880)

# Open png device
png('plot1.png')

# Create plot
hist(dat[,3],col='red',xlab='Global Active Power (kilowats)',main='Global Active Power')

# Close graphics device
dev.off()
