library(dplyr)

#import and read in the MechaCar_mpg dataset
MechaCar_mpg<- read.csv('MechaCar_mpg.csv') 

#generate multiple linear regression model
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg) 

#generate summary statistics
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg))

#import and read in the Suspension_Coil dataset
suspension_coil <- read.csv('Suspension_Coil.csv')

#generate dataframe of summary statistics for PSI column
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#generate dataframe to group manufacturing lot by stats of PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')