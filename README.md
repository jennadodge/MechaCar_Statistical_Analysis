# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### The linear regression equation is described by the following coefficients and intercept.
- mpg = 6.267(vehicle_length) + 0.001245(vehicle_weight) + .06877(spoiler_angle) + 3.546(ground_clearance)-3.411(AWD)-.0104

![Multiple Linear Regression Equation Coefficients](images/multiple_linear_regression_coefficients_mpg.png)
### Statistical significance
According to the summary of the multiple linear regression equation, the vehicle_length and ground_clearance (and the intercept) provided a non-random amount of variance to the mpg values in the dataset. (see below)
![Multiple Linear Regression Summary Statistics](images/multiple_linear_regerssion_summary_statistics.png)

### Slope
The p-value is xtremely small (5.35e-11) indicating that there is sufficient evidence to reject the null hypothesis. Therefore, the independent variables do contribute to the mpg variability.

### Accuracy
This multiple linear regression model has a multiple R-squared of 0.7149 which means that roughly 71% of the variability in the MPG is explained using this model. This is a fairly high correlation so we can say yes, this linear model predicts the mpg of MechaCar prototypes accurately 70% of the time.

## Summary Statistics on Suspension Coils

The suspension coils data includes 150 measurements of PSI from 3 different lots. The mean, median, variance, and standard deviation of all of the PSI measurements is as follows.
![Total Summary Table](images/total_summary_table.png)

The following table shows the summary statistics (mean, median, variance, standard deviation) for the PSI measurements per lot number of suspension coils. 
![Lot Summary Table](images/lot_summary_table.png)

### Design and Manufacturing Specifications
"The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI. Does the current manufacturing data meet this design specification?"
- For all manufacturing lots combined, the variance is 62.3 PSI and therefore the suspension coils DO meet the design specification.
- Lot 1 has a variance of less than 1 PSI, and therefore Lot 1 DOES meet the design specification.
- Lot 2 has a variance of less than 7.5 PSI and therefore Lot 2 DOES meet the design specifications.
- Lot 3 has a variance of 170.3 PSI and therefore DOES NOT meet the design specification of a variance of no more than 100 PSI. 

## T-tests on Suspension Coils
Next, I used a t-test to determine if the manufacturing lots are statistically different from the population mean. The null hypothesis is that there is no statistical difference between the mean of the PSI for the suspension coil lots and that of the population mean (1500 PSI).
#### T-test on All Lots
![T-test All Lots](images/t_test_all_lots.png)
The p-value of p = 0.06028 is above the significance level of p=0.05, so we neglect to reject the null hypothesis. The mean of all lots is not statistically different than the population mean.
#### T-test on Lot 1
![T-test Lot 1](images/t_test_lot_1.png)
The p-value of p = 1 is well above the significance level of p=0.05, so we neglect to reject the null hypothesis. The mean of Lot 1 is not statistically different than the population mean. 
#### T-test on Lot 2
![T-test Lot 2](images/t_test_lot_2.png)
The p-value of p = 0.6072 is well above the significance level of p=0.05, so we neglect to reject the null hypothesis. The mean of Lot 2 is not statistically different than the population mean. 
#### T-test on Lot 3
![T-test Lot 3](images/t_test_lot_3.png)
The p-value of p = 0.04168 is less than the significance level of p=0.05, so we reject the null hypothesis. The mean of Lot 3 is statistically different than the population mean of 1500.  

