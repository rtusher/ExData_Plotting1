 




if (! exists("ConsumptionData")) {
  ConsumptionData <- read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE, na.strings="?")
  ConsumptionData  <-ConsumptionData[ ConsumptionData$Date== "1/2/2007"  |ConsumptionData$Date== "2/2/2007"  , ]
  ConsumptionData$FechaHora <- strptime( paste( ConsumptionData$Date,ConsumptionData$Time,sep=" "), "%e/%m/%Y %T")
}

png("plot2.png", width=480, height=480)
par(mfrow=c(1,1))
plot(ConsumptionData$FechaHora, ConsumptionData$Global_active_power, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.off()



