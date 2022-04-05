# Deliverable 1

#Load dplyr and tidyverse
library(dplyr)
library(tidyverse)
#Read Mechacar_mpg file
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#Run linear regression with all 6 columns 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg)
#Determine p-vale and r squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg)) 


# Deliverable 2
# Read Mechacar_mpg file
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# Create a dataframe to get the mean, median, variance, and standard deviation
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), .groups = 'keep') 
# Create a dataframe using group_by() and summarize() to group each lot by the mean, median, variance and standard devaition
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), .groups = 'keep') 


#Deliverable 3
#determine what arguments are needed to test against the PSI column across all lots
?t.test()
# determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI,mu=1500)
#Subset Lot 1
Lot1 <- subset(Suspension_Coil, Manufacturing_Lot== "Lot1")
#Subset Lot 2
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot== "Lot2")
#Subset Lot 3
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot== "Lot3")
#T Test Lot 1
t.test(Lot1$PSI,mu=1500)
#T Test Lot 2
t.test(Lot2$PSI,mu=1500)
#T Test Lot 3
t.test(Lot3$PSI,mu=1500)
