## read data

data <- read.table("PowerConsumption.txt", na="?",header=T, sep";",stringsAsFactors=FALSE,dec=".")

## subset data

dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007")

## create plot2.png

dateTime <- strptime(paste(dataSubset$Date, dataSubset$Time,
        sep = " "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(dataSubset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type = "l", xlab = "",
        ylab = "Global Active Power (kilowatts)")

## close graphics device

dev.off()