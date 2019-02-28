getwd()
setwd("C:/Users/gcjff/OneDrive - Monsanto/Migrated from My PC/Documents/100 Coursera")
HPC <- read.delim("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", stringsAsFactors = F )
head(HPC)
HPCFeb <- HPC[HPC$Date %in% c("1/2/2007","2/2/2007") ,]



#adjusting dates
HPCFeb$Date <- as.Date(HPCFeb$Date, format = "%Y/%m/%d")
HPC$Date <- as.Date(as.character(HPC$Date), "%Y/%m/%d")
class(HPCFeb$Date)
head(HPC) #check to see if dates changed
str(HPC)

as.Date(HPC$Date)

#subsetting


head(HPCFeb) #check to see if subsetted correctly

#histogram
png("plot1.png", width=480, height=480)
hist(HPCFeb$Global_active_power, col ="red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")

#errors
#invalid number of breaks?