getwd()
setwd("C:/Users/gcjff/OneDrive - Monsanto/Migrated from My PC/Documents/100 Coursera")
HPC <- read.delim("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", stringsAsFactors = F )
head(HPC)
HPCFeb <- HPC[HPC$Date %in% c("1/2/2007","2/2/2007") ,]

#transforming date and time into datetime
datetime <- strptime(paste(HPCFeb$Date, HPCFeb$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
head(datetime)

#plotting 
#type = l specifies a line graph
#xlab blank will let the program autofill the x axis labels
#HPCFeb$Global_active_power  is the y variable
#datetime is an x variable

plot(datetime, HPCFeb$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
?paste
?plot
?strptime
