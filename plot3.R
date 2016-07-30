drawPlot3<-function(){
  #Function to plot sub metering data as a line series for the selected dates on the subset
  #change device for plotting to png file
    png("plot3.png",width = 480,height = 480,units = "px")
    plot(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_1 ,type = "n",ylab = "Energy sub metering",xlab = "")
    points(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_1 ,type = "l")
    points(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_2 ,type = "l",col="red")
    points(as.POSIXct(paste(mySub[,1],mySub[,2])),mySub$Sub_metering_3 ,type = "l",col="blue")
    legend("topright",adj = 0,cex = 0.4,text.width = strwidth("5,000,000"),lty = c(1,1,1),legend = c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),col=c("black","red","blue"))
    #close device
    dev.off()
}  
