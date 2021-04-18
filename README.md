# Statistics and R

<img src="images/statistics-header.jpg" width="1000" height="300">

## Project Overview
For this project, I applied my understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry. All of the analysis and visualizations were written in the R programming language.

## Resources
- **Data Sources**: `MechaCar_mpg.csv` & `Suspension_Coil.csv`
- **Software and Tools**: R, RStudio & Git Bash

## Challenge Deliverables and Results

### Deliverable 1: Linear Regression to Predict MPG

I designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the `MechaCar_mpg.csv` dataset. The multiple linear regression results help to answer the following 3 questions:

### **1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
Using the regression analysis, where low p-values indicate a non-random amount of variance to the mpg values (see calculations circled in red in screenshot below), the variables with a strong correlation to mpg are vehicle length and ground clearance. In contrast, p-values are higher for the vehicle weight, spoiler angle, and AWD variables, indicating very weak correlation and thus little chance of impacting mpg values. The intercept p-value is statistically signficant, meaning there are other variables and factors impacting mpg that have not been included in this model.

### **2. Is the slope of the linear model considered to be zero? Why or why not?**
The calculated p-value of the multiple regression is 5.35e-11 (see calculation circled in purple in screenshot below), which is much smaller than an assumed significance level of 0.05%. Therefore, there is sufficient evidence to reject the null hypothesis, which means the slope of the model is not zero. 

### **3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
This linear regression model can predict the mpg values of MechaCar prototypes fairly effectively since the R-squared value is 0.7149 (see calculation circled in yellow in screenshot below), meaning that predictions will be correct 71% of the time. However, the model could be improved if other variables that impact mpg were included to increase the R-squared value. 

<img src="images/Delv 1_linear regression.PNG">

### Deliverable 2: Summary Statistics on Suspension Coils

I created two summary statistic tables with the `Suspension_Coils.csv` dataset to answer the following question:

### **1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**
The `total_summary` table shows the variance for all manufacturing lots is 62.29 and well under 100 pounds per square inch, thus meeting the design specifications for the MechaCar suspension coils.

<img src="images/Delv 2_total_summary.PNG">

However, when we look at the `lot_summary` table that details the data by manufacturing lot, the variances for lot 1 and 2, at 0.98 and 7.47 respectively, clearly meet the design specifications, whereas the variance for lot 3 at 170.29 well exceeds the 100 PSI limit. 

<img src="images/Delv 2_lot_summary.PNG">

### Deliverable 3: T-Tests on Suspension Coils

I performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pound per square inch. In summary, the t-test results show that:

The PSI test for all manufacturing lots returned a p-value of 0.06, just above the 0.05% signficance level, showing that our sample is not statistically different from the population mean of 1,500 PSI.

<img src="images/Delv 3_t-test_all lots.PNG">

The tests for manufacturing lots 1 and 2 show that these subsets are not statistically different either, since their p-values are 1 and 0.61 respectively. However, the p-value of lot 3 at 0.042 is just under the 0.05% significance level, meaning it is statistically different from the population mean. 

<img src="images/Delv 3_t-test_lots.PNG">

### Deliverable 4: Study Design - MechaCar vs. Competition

Since city and highway fuel efficiency are key factors for consumers when deciding on a car to buy, I would design a statistical study to compare mpg metrics for the MechaCar vehicles against vehicles from other manufacturers. The null hypothesis would be that MechaCar vehicles get the same city and highway mpg as competitor's vehicles. The alternate hypothesis would be that the MechaCar vehicles perform better than their competitors in fuel efficiency. We could perform statistical tests like t-tests to analyze mpgs from samples of MechaCar vehicles by class (compact, sedan, SUV, etc.) against mpgs of competitor's vehicles by class. Then, we would be able to determine which manufacturer performs better in fuel efficiency.
