# Plot 2


# import data
hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
# subset data to chosen dates
hpc_sub <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")

# plot graph without data
plot(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Global_active_power)), type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
# plot graph
lines(strptime(paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time)), format = "%d/%m/%Y %H:%M:%S", tz = ""), as.numeric(as.character(hpc_sub$Global_active_power)))

# make png file
dev.copy(png, file = "plot2.png")
dev.off()
