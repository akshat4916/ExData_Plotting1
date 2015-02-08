power<- read.table("household_power_consumption.txt",header = T,sep=";",comment.char="%",stringsAsFactors=FALSE,na.strings="?")
powernew <-power[power$Date == "1/2/2007" | power$Date == "2/2/2007",]
powernew$Date <- as.Date(powernew$Date , format = "%d/%m/%Y")
hist(powernew$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
