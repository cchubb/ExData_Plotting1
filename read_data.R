#Get source files for project 1

#Ensure I am working in the right project directory. Uncomment only on my own system. Evaluators may need to set this themselves.
#setwd("C:\\Users\\cchubb\\Coursera\\DataScience\\4ExploratoryDataAnalysis\\ExData_Plotting1")

#Clear out any local variables, start fresh and remove unneeded data from the global environment
rm(list = ls())


#Connect to the server and download the file if it does not already exist
if (! file.exists("./data")) { dir.create("./data")}

if (! file.exists("./data/consumption.zip")) {
  fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, destfile="./data/consumption.zip")
  
  if (! file.exists("./data/consumption.zip")) { stop("Unable to download zip file")}
}

#Unizp the file if it hasn't already been unzipped
if (! file.exists("./data/household_power_consumption.txt")) {
  unzip("./data/consumption.zip", overwrite=TRUE, exdir="./data")
}

consumption <- read.csv("./data/household_power_consumption.txt", 
                        sep=";", na.strings="?", stringsAsFactors=FALSE)
#Convert Date and Time into a DateTime variable
library(lubridate)

consumption <- transform(consumption, DateTime = dmy_hms(paste(Date, Time)))

#Filter to just the rows we need from 2007-02-01 and 2007-02-02
consumption <- consumption[consumption$DateTime >= ymd_hms("2007-02-01 00:00:00") & consumption$DateTime <= ymd_hms("2007-02-03 00:00:00"),]














