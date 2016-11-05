# Plot 3


#create png file
png(filename = "plot3.png")

# import data
hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
# subset data to chosen dates
hpc_sub <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")

# plot graph without data
plot(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_1)), type = "n", xlab = "", ylab = "Energy sub metering")    
# plot graph
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_1)))
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_2)), col = "red")
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Sub_metering_3)), col = "blue")
# add legend
legend("toprigh", col = c("black", "red", "blue"), lty = c(1, 1, 1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 1.4)

# close png file
dev.off()