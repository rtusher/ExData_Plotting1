


if (! exists("ConsumptionData")) {
  ConsumptionData <- read.csv("household_power_consumption.txt",sep=";",stringsAsFactors = FALSE, na.strings="?")
  ConsumptionData  <-ConsumptionData[ ConsumptionData$Date== "1/2/2007"  |ConsumptionData$Date== "2/2/2007"  , ]
  ConsumptionData$FechaHora <- strptime( paste( ConsumptionData$Date,ConsumptionData$Time,sep=" "), "%e/%m/%Y %T")
}


png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))


plot(ConsumptionData$FechaHora, ConsumptionData$Global_active_power, type="l",ylab="Global Active Power", xlab="")

plot(ConsumptionData$FechaHora, ConsumptionData$Voltage, type="l", xlab="datetime", ylab="Voltage", main="")


plot(ConsumptionData$FechaHora, ConsumptionData$Sub_metering_1, type="l",ylab="Energy sub metering", xlab="")
lines(ConsumptionData$FechaHora, ConsumptionData$Sub_metering_2, col="red")
lines(ConsumptionData$FechaHora, ConsumptionData$Sub_metering_3, col="blue")
legend('topright', c('sub_metering_1', 'sub_metering_2', 'sub_metering_3'), col=c("black", "red", "blue"), lwd=1,  bty="n")
 
 
plot(ConsumptionData$FechaHora, ConsumptionData$Global_reactive_power, type="l", xlab="datetime", ylab="Global Reactive Power", main="")
 
 
dev.off()



