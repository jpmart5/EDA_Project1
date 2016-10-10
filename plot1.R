# Set working directory to one containing data file
setwd("/Users/Ryan/Desktop/Data_Science/4_Exploring_Data_Analysis/1_Wk")

# Read in relevant data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# Clear out extraneious variables, creating numerics
data <- data select(V3)mutate(V3 = as.numeric(as.character(V3)))

# Create Global Active Power histogram
hist(data$V3, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")