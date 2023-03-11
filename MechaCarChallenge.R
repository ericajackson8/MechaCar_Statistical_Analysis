library(dplyr)
# Read in the dataset
mechacar_mpg <- read.csv('MechaCar_mpg.csv')

# Perform linear regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
summary(reg)

# Get the r-sqaured value. 
summary(reg)$r.squared

# Deliverable 2
# read in the dataset
suspension_coil <- read.csv('Suspension_Coil.csv')
# Summary of PSI Across ALL LOTS
total_summary <- summarize(suspension_coil, mean = mean(PSI), median = median(PSI), variance = var(PSI), SD=sd(PSI))
View(total_summary)

# Summary of PSI By Lot
group_data <- group_by(suspension_coil,Manufacturing_Lot)
lot_summary <- summarize(group_data,mean = mean(PSI), median = median(PSI), variance = var(PSI), SD=sd(PSI) )
View(lot_summary)
