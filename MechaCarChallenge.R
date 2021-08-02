# load the dplyr package.
library(dplyr)
library(tidyverse)

#Deliverable 1: Linear Regression to Predict MPG
# import and read MechaCar_mpg.csv
mecha_mpg <- read.csv("MechaCar_mpg.csv", check.names = FALSE, stringsAsFactors = FALSE)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_mpg) #create linear model
summary(lm( mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_mpg)) #generate summary statistics


#Deliverable 2: Create summary for the suspension coil data
suspension_coil <- read.csv("Suspension_Coil.csv", check.names = FALSE, stringsAsFactors = FALSE)

# mean,median, variance and sd calculated for all lots
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table

# mean,median, variance and sd calculated for each of the three lots
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table

total_summary # view data
lot_summary # view data


#Deliverable 3: T-Tests on Suspension Coils 
# 1. for all the lots
PSI <- suspension_coil$PSI
t.test(PSI,mu=1500) # for all the lots

# 2. for each of the lots separately
lot1 <- subset(suspension_coil,suspension_coil$Manufacturing_Lot=="Lot1")
t.test(lot1$PSI,mu=1500) # for lot1

lot2 <- subset(suspension_coil,suspension_coil$Manufacturing_Lot=="Lot2")
t.test(lot2$PSI,mu=1500) # for lot2

lot3 <- subset(suspension_coil,suspension_coil$Manufacturing_Lot=="Lot3")
t.test(lot3$PSI,mu=1500) # for lot3








