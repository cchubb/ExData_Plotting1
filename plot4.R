#Plot4

source("read_data.R")

png(filename="plot4.png", width=480, height=480)

#Set up for 4 charts
par(mfrow = c(2,2))

#Chart 1
plot(consumption$DateTime,
     consumption$Global_active_power, 
     col="black", 
     type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     xaxt="n"
)
axis.POSIXct(1, at=seq(min(consumption$DateTime), max(consumption$DateTime), by="1 day"), format="%a")


#Chart 2
plot(consumption$DateTime,
     consumption$Voltage, 
     col="black", 
     type="l",
     ylab="Voltage",
     xlab="datetime",
     xaxt="n"
)
axis.POSIXct(1, at=seq(min(consumption$DateTime), max(consumption$DateTime), by="1 day"), format="%a")


#Chart 3

plot(consumption$DateTime,
     consumption$Sub_metering_1, 
     type="n",
     ylab="Energy sub metering",
     xlab="",
     xaxt="n"
)
axis.POSIXct(1, at=seq(min(consumption$DateTime), max(consumption$DateTime), by="1 day"), format="%a")
lines(consumption$DateTime,
      consumption$Sub_metering_1, 
      col="black",
)
lines(consumption$DateTime,
      consumption$Sub_metering_2, 
      col="red",
)
lines(consumption$DateTime,
      consumption$Sub_metering_3, 
      col="blue",
)
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, bty="n")


#Chart 4
plot(consumption$DateTime,
     consumption$Global_reactive_power, 
     col="black", 
     type="l",
     ylab="Global_reactive_power",
     xlab="datetime",
     xaxt="n"
)
axis.POSIXct(1, at=seq(min(consumption$DateTime), max(consumption$DateTime), by="1 day"), format="%a")


dev.off() #Save png