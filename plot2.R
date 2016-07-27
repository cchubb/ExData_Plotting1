#Plot2

source("read_data.R")

png(filename="plot2.png", width=480, height=480)

# wday(consumption$DateTime, label=TRUE) will get weekday names
plot(consumption$DateTime,
     consumption$Global_active_power, 
     col="black", 
     type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     xaxt="n"
)
axis.POSIXct(1, at=seq(min(consumption$DateTime), max(consumption$DateTime), by="1 day"), format="%a")

dev.off() #Save png