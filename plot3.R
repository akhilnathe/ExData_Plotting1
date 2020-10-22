with(data,{ plot(dt,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
            lines(dt,Sub_metering_2,col="red")
            lines(dt,Sub_metering_3,col="blue")})
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(1,1,1),col=c("black","red","blue"))

#The graph is saved in a png file
dev.copy(png,"plot3.png",width=480, height=480)
dev.off()