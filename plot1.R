


if (! exists("ConsumptionData")) {
  ConsumptionData <- read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE, na.strings="?")
  ConsumptionData  <-ConsumptionData[ ConsumptionData$Date== "1/2/2007"  |ConsumptionData$Date== "2/2/2007"  , ]
  ConsumptionData$FechaHora <- strptime( paste( ConsumptionData$Date,ConsumptionData$Time,sep=" "), "%e/%m/%Y %T")
}



png("plot1.png", width=480, height=480)

par(mfrow=c(1,1))
hist(ConsumptionData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()

