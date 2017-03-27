# Load & subset data to use records from the dates 2007-02-01 and 2007-02-02

date_time <- function(date, time) {
    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
}

plot_data <- read.table("household_power_consumption.txt", header=TRUE,sep=";",colClasses=c("character", "character", rep("numeric",7)), na="?")
    # convert date and time 
    plot_data$Time <- strptime(paste(plot_data$Date, plot_data$Time), "%d/%m/%Y %H:%M:%S")
    plot_data$Date <- as.Date(plot_data$Date, "%d/%m/%Y")
    # subset data 
    select_data <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    plot_data<- subset(plot_data, Date %in% select_data)