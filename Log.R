fileURL<-"household_power_consumption.txt"
myData<-read.table(fileURL,header=TRUE,sep=";")
myData$Global_active_power<-as.numeric(as.character(myData$Global_active_power))
myData$Global_reactive_power<-as.numeric(as.character(myData$Global_reactive_power))
myData$Voltage<-as.numeric(as.character(myData$Voltage))
myData$Global_intensity<-as.numeric(as.character(myData$Global_intensity))
myData$Sub_metering_1<-as.numeric(as.character(myData$Sub_metering_1))
myData$Sub_metering_2<-as.numeric(as.character(myData$Sub_metering_2))
myData$Sub_metering_3<-as.numeric(as.character(myData$Sub_metering_3))
myData$Date<-as.Date(as.character(myData$Date),format = "%d/%m/%Y")
#myData$Time<-strptime(as.character(myData$Time),format="%H:%M:%S")
mySub<-myData[myData$Date>="2007/02/01" & myData$Date<="2007/02/02",]
