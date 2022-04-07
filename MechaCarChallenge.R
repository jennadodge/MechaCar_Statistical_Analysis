library(dplyr)

#read CSV data
mechaCarTable <- read.csv('MechaCar_mpg.csv')

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCarTable)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCarTable))

# read Suspension Coil CSV data
suspensionCoilTable <- read.csv('Suspension_Coil.csv')

# create a total_summary dataframe to get the mean, median, variance, and std dev of the suspensiol coil PSI column
total_summary <- suspensionCoilTable %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance =var(PSI), SD = sd(PSI))

# create a lot_summary dataframe to group each manufacturing lot by the mean, median, variance and std dev of PSI
lot_summary <- suspensionCoilTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance =var(PSI), SD = sd(PSI))
