drawPlot4<-function(){
  #Function to make 4 plots 
  #change device for plotting to png file
  png("plot4.png",width = 480,height = 480,units = "px")
  #Set the grid for plotting 2 by 2 matrix of plots
  par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
  #first plot
  plot(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Global_active_power ,type = "l",ylab = "Global active power",xlab = "")
  #second plot
  plot(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Voltage ,type = "l",ylab ="Voltage",xlab = "datetime")
  #third plot
  plot(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_1 ,type = "n",ylab = "Energy sub metering",xlab = "")
  points(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_1 ,type = "l")
  points(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_2 ,type = "l",col="red")
  points(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_3 ,type = "l",col="blue")
  legend("topright",adj = 0,cex = 0.4,text.width = strwidth("5,000,000"),lty = c(1,1,1),legend = c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),col=c("black","red","blue"))
  #fourth plot
  plot(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Global_reactive_power ,type = "l",ylab ="Global reactive power",xlab = "datetime")
  dev.off()
} 