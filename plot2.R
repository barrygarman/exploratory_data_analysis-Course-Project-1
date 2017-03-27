source("load_subst_data.R")

plot2 <- function(data=NULL) {
    if(is.null(data))
        data <- load_data()

    png(file="plot2.png")
    
    plot(data$Time, data$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power (kilowatts)")
    
    dev.off()
}