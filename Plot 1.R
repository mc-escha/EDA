household_power_consumption<-read.table(file ="household_power_consumption.txt", header = TRUE, sep = ";")
household_power_consumption$Date<-as.Date(as.character(household_power_consumption$Date), format ="%d/%m/%Y")
household_power_consumption<-subset(household_power_consumption, Date >= "2007/02/01")
household_power_consumption<-subset(household_power_consumption, Date <= "2007/02/02")
household_power_consumption$Global_active_power<-as.numeric(household_power_consumption$Global_active_power)/1000
png(filename= "Plot 1.png")
hist(household_power_consumption$Global_active_power, col ="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

