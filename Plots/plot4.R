# Plot 4


#create png file
png(filename = "plot4.png")

# import data
hpc <- read.table("C:/Users/Kristina/Documents/Data Classes/Coursera/Johns Hopkins University/4. Exploratory Data Analysis/Data/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";")
# subset data to chosen dates
hpc_sub <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")

# set environment for 4 graphs
par(mfrow = c(2, 2))

# plot 1st graph
# plot graph without data
plot(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Global_active_power)), type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
# plot graph
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Global_active_power)))

# plot 2nd graph
# plot graph without data
plot(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Voltage)), type = "n", xlab = "datetime", ylab = "Voltage")
# plot graph
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Voltage)))

# plot 3rd graph
# plot graph without data
plot(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_1)), type = "n", xlab = "", ylab = "Energy sub metering")    
# plot graph
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_1)))
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_2)), col = "red")
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_3)), col = "blue")
# add legend
legend("toprigh", col = c("black", "red", "blue"), lty = c(1, 1, 1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.9, bty = "n")

#plot 4th graph
# plot graph without data
plot(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Global_reactive_power)), type = "n", xlab = "datetime", ylab = "Global_reactive_power")
# plot graph
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Global_reactive_power)))

# close png file
dev.off()
