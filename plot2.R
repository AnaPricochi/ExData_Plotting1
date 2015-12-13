plot2<- function(){
  # load data
  data <- loading_data()
  
  # create line plot
  plot(data$Time, data$Global_active_power, type = "l", main = NULL, xlab = '', ylab = "Global Active Power (kilowatts)")
  
  # export to csv
  dev.copy(png, file = "plot2.png")
  dev.off() 
}