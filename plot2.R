drawPlot2<-function(){
  #Function to plot global active power as a line series for the selected dates on the subset
  #change device for plotting to png file
  png("plot2.png",width = 480,height = 480,units = "px")
  plot(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Global_active_power,type = "l",ylab = "Global Active Powe (kilowatts)",xlab = "")
  #close device
  dev.off()
}