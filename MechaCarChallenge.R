library(dplyr)

#read CSV data
mechaCarTable <- read.csv('MechaCar_mpg.csv')

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCarTable)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCarTable))

