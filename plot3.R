#Plot3

source("read_data.R")

png(filename="plot3.png", width=480, height=480)

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
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1)



dev.off() #Save png