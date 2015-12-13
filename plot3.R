plot3<- function(){
  # load data
  data <- loading_data()
  
  # create plot
  with(dataset, plot(dataset$Time, dataset$Sub_metering_1,type = "l", main = NULL, xlab = '', ylab = "Energy sub metering"))
  with(subset(dataset), points(dataset$Time, dataset$Sub_metering_2,type = "l", col = "red"))
  with(subset(dataset), points(dataset$Time, dataset$Sub_metering_3,type = "l", col = "blue"))
  
  # add legend
  legend("topright", pch = "-", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  # export to csv
  dev.copy(png, file = "plot3.png")
  dev.off() 
}