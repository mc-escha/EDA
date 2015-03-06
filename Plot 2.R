household_power_consumption<-read.table(file ="household_power_consumption.txt", colClasses=c("character", "character"), header = TRUE, sep = ";")
household_power_consumption$Date<-as.Date(household_power_consumption$Date, format ="%d/%m/%Y")
#household_power_consumption<-x
household_power_consumption<-subset(household_power_consumption, Date >= "2007/02/01")
household_power_consumption<-subset(household_power_consumption, Date <= "2007/02/02")

household_power_consumption$DateTime<- with(household_power_consumption, { timestamp=format(as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S") })
household_power_consumption$Global_active_power<-as.numeric(household_power_consumption$Global_active_power)/1000
plot<-plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type ="l")

png(filename= "Plot 2.png")
print(plot)

