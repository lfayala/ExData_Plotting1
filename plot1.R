drawPlot1<-function(){
  #Function to plot global active power as a histogram
  #change device for plotting to png file
  png("plot1.png",width = 480,height = 480,units = "px")
  hist(mySub$Global_active_power,xlab = "Global Active Power(Kilowatts)",col="red",main="Global Active Power")
  #close device
  dev.off()
}