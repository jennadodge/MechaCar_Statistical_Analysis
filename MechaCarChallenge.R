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

# Use a t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1500 PSI
t.test(suspensionCoilTable$PSI, mu=1500)

# Use a t-test to determine if the PSI for each Lot 1 is statistically different from the population mean of 1500
t.test(subset(suspensionCoilTable, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
       
# Use a t-test to determine if the PSI for each Lot 2 is statistically different from the population mean of 1500
t.test(subset(suspensionCoilTable, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# Use a t-test to determine if the PSI for each Lot 3 is statistically different from the population mean of 1500
t.test(subset(suspensionCoilTable, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
