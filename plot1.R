#library("swirl")
#install_course("Exploratory_Data_Analysis")
#swirl()

#head(pollution)

data <- read.delim(file = "C:\\Users\\Aayush\\Desktop\\sem5\\datascience\\coursera assignments\\household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")
data

class(data$Date)

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
class(data$Date)

data

data <- data[data$Date == as.Date("2007-02-01", format = "%Y-%m-%d") | data$Date == as.Date("2007-02-02", format = "%Y-%m-%d"), ]
#data[data$Date == as.Date("2007-02-02", format = "%Y-%m-%d"),]
#data
png(filename = "plot1.png",width = 480, height = 480, units = "px" )
hist(as.numeric(data$Global_active_power), main = "Global Active Power",xlab = "Global Active Power (kilowatts)", ylab = "Frequency",col = "red")
dev.off()
