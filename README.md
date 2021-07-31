# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
1. Data for Vehicle_weight, spoiler_angle and AWD shows that it has very less significance when it comes to MPG.
2. The p-value gets smaller as the test statistic calculated from your data gets further away from the range of test statistics predicted by the null hypothesis.
Values for Vehicle_length and ground_clearance are under the significance level of 5% so they have the most effect on mpg.
3. Multiple R-squared:  0.7149. It is pretty close to 1.0 so that means that Y has good correlation to independednt variables so slope cannot be 0.
4. It does give us a good picture.

## Summary Statistics on Suspension Coils

1. The variance for Lot 3 is very high so some of the values might be quite spread out compared to mean.
2. Lot 3 does not comply by the standards of variance less than 100.

## T-Tests on Suspension Coils
Null Hypothesis: There is no difference between the Mean of the sample and population data.
Alternative Hypothesis: Mean of the sample and population data are different.

On the basis of one sample t test, p-value = 0.06 which is greater than the significant value of 0.05, hence there is not enough evidence to reject null hypotheis. Conclusion: Mean of sample and poulation data are same for all the lots.
```
	One Sample t-test

data:  PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
```
**One Sample t test for Lot1**

Conclusion: Mean of sample and poulation data are same for lot1.

```
	One Sample t-test

data:  lot1$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
```
**One Sample t test for Lot2**

Conclusion: Mean of sample and poulation data are same for lot2.

```
	One Sample t-test

data:  lot2$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
   
```
**One Sample t test for Lot3**

Conclusion: Mean of sample and poulation data are same for lot3.

	One Sample t-test

data:  lot3$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 

## Study Design: MechaCar vs Competition.

Assume other parameters which might affect the car's mpg.
