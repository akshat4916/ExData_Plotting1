power<- read.table("household_power_consumption.txt",header = T,sep=";",comment.char="%",stringsAsFactors=FALSE,na.strings="?")
powernew <-power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]
powernew$dateTime<-strptime(paste(powernew$Date, powernew$Time), format = "%d/%m/%Y %H:%M:%S")
with(powernew,plot(dateTime,Global_active_power,type="l",xlab="",ylab="Global Active Power kilowatts"))