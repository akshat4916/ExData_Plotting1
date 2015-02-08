power<- read.table("household_power_consumption.txt",header = T,sep=";",comment.char="%",stringsAsFactors=FALSE,na.strings="?")
powernew <-power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]
powernew$dateTime<-strptime(paste(powernew$Date, powernew$Time), format = "%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))
with(powernew,{
    plot(powernew$dateTime,powernew$Global_active_power,type="l",xlab="",ylab="Global Active Power kilowatts")
    plot(powernew$dateTime,powernew$Voltage,type="l",xlab="datetime",ylab="Voltage")
    
    plot(powernew$dateTime,powernew$Sub_metering_1,xlab="",ylab="Energy Sub metering",type="n")
    lines(powernew$dateTime,powernew$Sub_metering_1,col="black",type="l")
    lines(powernew$dateTime,powernew$Sub_metering_2,col="red",type="l")
    lines(powernew$dateTime,powernew$Sub_metering_3,col="blue",type="l")
    legend("topright",pch="-",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    plot(powernew$dateTime,powernew$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_Power")
    outer=TRUE
    }
    )