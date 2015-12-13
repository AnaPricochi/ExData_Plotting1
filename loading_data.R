loading_data<- function(){
  raw_data <- data.frame(read.table("exdata-data-household_power_consumption\\household_power_consumption.txt", sep=";", header = TRUE))
  
  raw_data[raw_data == '?'] <- NA
  
  raw_data$Time <- strptime(paste(raw_data$Date, " ", raw_data$Time), format="%d/%m/%Y %H:%M:%S")
  raw_data$Date <- as.Date(raw_data$Date, format = "%d/%m/%Y", origin="1970-01-01")

  raw_data
}