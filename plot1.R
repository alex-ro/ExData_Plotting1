setwd("~/workspace/ExData_Plotting1")

data <- read.csv("./household_power_consumption.txt", sep=";", na.string="?")
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), 
                        format="%d/%m/%Y %H:%M:%S")

d <- data[as.Date(data$DateTime) >= as.Date("2007-02-01") & 
              as.Date(data$DateTime) <= as.Date("2007-02-02"), ]

hist(d$Global_active_power, xlab="Global Active Power (kilowatts)", 
     col="red", main="Global Active Power")

dev.copy(png, filename="plot1.png", width=480, height=480)
dev.off()