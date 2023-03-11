# MechaCar_Statistical_Analysis
## Analysis Overview
We have undertaken an assignment from AutoRus to analyze the production data from its newest prototype, MechaCar which is sufferring from some recent production troubles which could block the start of manufacturing.

## Linear Regression to Predict MPG 
First we ran a linear regression to see what factors might best indicate the MPG performance of the prototypes. 
1. Vehicle Length and Ground_Clearance appear to be the most significant in terms of explaining the variability in MPG.
2. The slope of the linear regression is not 0.  A Zero (0) slope would indicate that the independent variables have absolutely no effect on the MPG.  This is not the case since our RSquared=.7149 which indicates that 71% of the variation in MPG can be explained by the combination of Wehicle_Length, Vehicle Weight, Spoiler Angle and Ground Clearance. (Note: These were the only variable in the dataset)
3. The linear model explains enough variation for us to look into these independent varaiables further to see if we could decrease some of the variablity in MPG to get the performance that we desire.
![alt_text](https://github.com/ericajackson8/MechaCar_Statistical_Analysis/blob/main/LinearRegressiontoPredictMPG.png)

## Summary Statistics on Suspension Coils
![alt_text](https://github.com/ericajackson8/MechaCar_Statistical_Analysis/blob/main/Total_Summary.png)
![alt_text](https://github.com/ericajackson8/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.png)
Given that the threshold on Maximum Variance on MechaCar suspension coils is set at 100 PSI, we observe and conclude the following:
1. The total Variance across all lots(62 PSI) is below the maximum variance. So technically, the design specification is met overall.
2. However, we see that for individual lots, Lot 3 variance (170 PSI) appear to be way above the maximum allowable variance.  Thus, we can conclude that Lot 3 does not meet design specifications and additional analysis and research needs to be performed to identify the root cause of this performance for Lot 3. In Summary, We should therefor conclude that design specifications are not being met Overall, since one of the Lots is not meeting the variance spec.  We should not go to producton without addressing this issue.

## T-Test on Suspension Coils
We conducted t-tests to determine whether the mean PSI overall and for each lot was consistent with the true population mean of 1500 PSI.
### Overall T-Test
When testing the null hypothesis - H0:The Mean PSI across all lots is 1500 vs. H1: The Mean PSI across all lots is NOT 1500, we conclude that we FAIL to REJECT the Null Hypothesis.  The p-value (.06028) is not significant at alpha=.05.
![alt_text](https://github.com/ericajackson8/MechaCar_Statistical_Analysis/blob/main/AllLotMeanPSI_vs_PopMeanPSI.png)

### T-Test by Lot
We also conducted a t-test for each lot to determine whether the mean PSI for a given lot (Lot 1, Lot 2, Lot 3) was consistent with the true population mean. We tested the following null and alternative hypothesis:
H0:The Mean PSI for each Lot is 1500  
H1: The Mean PSI for each Lot is NOT 1500

Again, we FAIL TO REJECT the null hypothesis for Lots 1 and Lots 2, the p-values(Lot1(1) & Lot2(.6))are not significant at alpha=.05. 
LOT1
![alt_text](https://github.com/ericajackson8/MechaCar_Statistical_Analysis/blob/main/Lot1PSI_vs_PopMeanPSI.png)

LOT2
![alt_text](https://github.com/ericajackson8/MechaCar_Statistical_Analysis/blob/main/Lot2MeanPSI_vs_PopMeanPSI.png)

On the other hand, we fail to reject the null hypothesis for Lot3. The Lot3 mean=1496  and the p-value=.04.  Since the p-value is < alpah=.05, we REJECT the Null Hypothesis in favor of the alternative that the Mean PSI for Lot3 is NOT EQUAL to 1500.

LOT3
![alt_text](https://github.com/ericajackson8/MechaCar_Statistical_Analysis/blob/main/Lot3MeanPSI_vs_PopMeanPSI.png)

## Study Design: MechaCar vs. Competition

