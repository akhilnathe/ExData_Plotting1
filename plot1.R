
#Reading Data from the txt file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- subset(data,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
data <- data[complete.cases(data),]
dt <- paste(data$Date, data$Time)
dt <- strptime(dt,"%Y-%m-%d %H:%M:%S")

#The tidydata set is stored in a variable named data 
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

#The graph is saved in a png file
dev.copy(png,file="plot1.png", width=480, height=480)
dev.off()
