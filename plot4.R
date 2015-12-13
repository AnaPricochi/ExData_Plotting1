plot4<- function(){
  # load data
  data <- loading_data()
  
  # create plots
  par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
  with(data, {
    plot(data$Time, data$Global_active_power, type = "l", main = NULL, xlab = '', ylab = "Global Active Power (kilowatts)")
    plot(data$Time, data$Voltage, type = "l", main = NULL, xlab = "datetime", ylab = "Voltage")
    with(dataset, plot(dataset$Time, dataset$Sub_metering_1,type = "l", main = NULL, xlab = '', ylab = "Energy sub metering"))
    with(subset(dataset), points(dataset$Time, dataset$Sub_metering_2,type = "l", col = "red"))
    with(subset(dataset), points(dataset$Time, dataset$Sub_metering_3,type = "l", col = "blue"))
    legend("topright", pch = "-", bty = "n", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(data$Time, data$Global_reactive_power, type = "l", main = NULL, xlab = "datetime", ylab = "Global_reactive_power")
    
  })

  # export to csv
  dev.copy(png, file = "plot4.png")
  dev.off() 
}