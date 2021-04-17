
#Deliverable 1: Step 3. Load `dplyr` package.
library(dplyr)

#Delv 1: Step 4. Import and read in the MechaCar_mpg dataset.
MechaCar_mpg<- read.csv('MechaCar_mpg.csv') 

#Delv 1: Step 5.Generate multiple linear regression model.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) 

#Delv 1: Step 6. Generate summary statistics of LR.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

#Deliverable 2: Step 2. Import and read in the Suspension_Coil dataset.
suspension_coil <- read.csv('Suspension_Coil.csv')

#Delv 2: Step 3. Generate dataframe of summary statistics for PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Delv 2: Step 4. Generate dataframe to group manufacturing lot by stats of PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Deliverable 3: Step 1. Perform t-test to determine if PSI across all lots is statistically different from pop. mean of 1500 PSI.
t.test(suspension_coil$PSI, mu=1500)

#Delv 3: Step 2. Perform t-test for PSI in Lot 1.
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

#Delv 3: Step 2. Perform t-test for PSI in Lot 2.
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

#Delv 3: Step 2. Perform t-test for PSI in Lot 3.
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)