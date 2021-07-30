# load the dplyr package.
library(dplyr)

# DELIVERABLE 1 - Linear Regression to Predict MPG
# import and read MechaCar_mpg.csv
mecha_mpg <- read.csv("MechaCar_mpg.csv", check.names = FALSE, stringsAsFactors = FALSE)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_mpg) #create linear model
summary(lm( mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_mpg)) #generate summary statistics


#Deliverable 2: Create Visualizations for the Trip Analysis
suspension_coil <- read.csv("Suspension_Coil.csv", check.names = FALSE, stringsAsFactors = FALSE)
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') #create summary table

lot_summary
total_summary



