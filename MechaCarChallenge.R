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

# Deliverable 3
#Mean Across All Lots Compared to Population Mean of 1500
total_mean <- subset(suspension_coil,select=PSI)
t.test(total_mean, alternative="two.sided", mu=1500)
t.test(subset(suspension_coil,select=PSI), alternative="two.sided", mu=1500)

# Mean of Lot 1 PSI Compared to Population Mean of 1500
#lot1_mean <- subset(suspension_coil,Manufacturing_Lot=="Lot1",select=PSI)
#t.test(lot1_mean,total_mean)
#t.test(lot1_mean, alternative="two.sided", mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1",select=PSI), alternative="two.sided", mu=1500)

# Mean of Lot 2 PSI Compared to Population Mean of 1500
#lot2_mean <- subset(suspension_coil,Manufacturing_Lot=="Lot2",select=PSI)
#t.test(lot2_mean, total_mean)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2",select=PSI), alternative="two.sided", mu=1500)

# Mean of Lot 3 PSI Compared to Population Mean of 1500
#lot3_mean <- subset(suspension_coil,Manufacturing_Lot=="Lot3",select=PSI)
#t.test(lot3_mean, total_mean)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3",select=PSI), alternative="two.sided", mu=1500)
