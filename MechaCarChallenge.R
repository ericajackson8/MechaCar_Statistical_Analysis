library(dplyr)
# Read in the dataset
mechacar_mpg <- read.csv('MechaCar_mpg.csv')

# Perform linear regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)
summary(reg)

# Get the r-sqaured value. 
summary(reg)$r.squared
