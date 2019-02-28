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
png("plot3.png", width=480, height=480)
plot(datetime, HPCFeb$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(datetime,HPCFeb$Sub_metering_2, col = 'Red')
lines(datetime, HPCFeb$Sub_metering_3, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()