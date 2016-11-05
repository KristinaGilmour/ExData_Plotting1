# Plot 1


# import data
hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
# subst dataset to chosen dates
hpc_sub <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")

# make histogram
hist(as.numeric(as.character(hpc_sub$Global_active_power)), ylab = "Frequency", xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red", xlim = c(0, 6), ylim = c(0, 1200), breaks = 12, xaxp = c(0, 6, 3))

# make png file
dev.copy(png, file = "plot1.png")
dev.off()

