plot1<- function(){
  # load data
  data <- loading_data()
  
  # create histogram
  hist(data$Global_active_power, col="red", main ="Global Active Power", xlab = "Global Active Power (kilowatts)")
  
  # export to csv
  dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")
  dev.off() 
}