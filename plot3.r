## read data

data <- read.table("PowerConsumption.txt", na="?",header=T, sep";",stringsAsFactors=FALSE,dec=".")

## subset data

dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007")

## create plot3.png

dateTime <- strptime(paste(dataSubset$Date, dataSubset$Time,
        sep = " "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(dataSubset$Global_active_power)
subMetering1 <- as.numeric(dataSubset$Sub_metering_1)
subMetering2 <- as.numeric(dataSubset$Sub_metering_2)
subMetering3 <- as.numeric(dataSubset$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(dateTime, subMetering1, type = "l", xlab = "",
        ylab = "Energy Submetering")
lines(dateTime, subMetering2, type = "l", col = "red")
lines(dateTime, subMetering3, type = "l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 2.5, col = c("black", "red", "blue"))

## close graphics device

dev.off()