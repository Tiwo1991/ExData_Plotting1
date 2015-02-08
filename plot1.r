## read data

data <- read.table("PowerConsumption.txt", na="?",header=T, sep";",stringsAsFactors=FALSE,dec=".")

## subset data

dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007")

## create plot1.png

globalActivePower <- as.numeric(dataSubset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

## close graphics device

dev.off()