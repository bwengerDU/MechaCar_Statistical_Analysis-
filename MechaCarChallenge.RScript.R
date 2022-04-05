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

