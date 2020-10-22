par(mfrow=c(2,2),mar=c(4,4,2,1), oma=c(0,0,2,0))

plot(dt,  data$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
plot(dt,  data$Voltage,type="l",xlab="",ylab="Voltage")
with(data,{ plot(dt,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
        lines(dt,Sub_metering_2,col="red")
        lines(dt,Sub_metering_3,col="blue")})
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",lwd=c(1,1,1),col=c("black","red","blue"))
plot(dt,  data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

#The graph is saved in a png file
dev.copy(png,"plot4.png",width=480, height=480)
dev.off()