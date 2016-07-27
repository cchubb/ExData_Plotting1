#Plot1

source("read_data.R")

png(filename="plot1.png", width=480, height=480)

hist(consumption$Global_active_power, 
     main="Global Active Power",
     col="red",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     breaks=12
     )

dev.off() #Save png