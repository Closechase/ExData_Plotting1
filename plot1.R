data <- read.delim(file = "C:\\Users\\Aayush\\Desktop\\sem5\\datascience\\coursera assignments\\household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")

data

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")


data <- data[data$Date == as.Date("2007-02-01", format = "%Y-%m-%d") | data$Date == as.Date("2007-02-02", format = "%Y-%m-%d"), ]
#data[data$Date == as.Date("2007-02-02", format = "%Y-%m-%d"),]
#data
strftime(data$Date, "%A")
png(filename = "plot2.png",width = 480, height = 480, units = "px" )
plot(data$Date, data$Global_active_power,type ="l")

dev.off()
