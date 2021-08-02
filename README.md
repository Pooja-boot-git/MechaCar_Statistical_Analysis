# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
1. Our independent variables, vehicle_length and ground_clearance have non-random variance to the mpg values in dataset.
2. The slope of the linear model is not zero. Slope is considered to be 0 only when the dependent variable has no co-relation to our independent variable(s). Here, data shows that variable_length and ground_clearance are correlated to mpg.
3. Our linear model effectively predicts MechaCar prototypes. The value of Multiple R-squared is 0.7149. It is pretty close to 1.0 so that means that our regression model sufficiently predicts our dependent variable.

## Summary Statistics on Suspension Coils

1. The current manufacturing specification of variance not exceeding 100 pounds per square inch has been met for all the lots in total.
2. Individually, Lot 3 does not comply by the standards. It's variance is 170.

## T-Tests on Suspension Coils
Null Hypothesis: There is no difference between the Mean of the sample and population data.
Alternative Hypothesis: Mean of the sample and population data are different.

When t-test was run on all the lots together, the p-value came equal to 0.06 which is greater than the significant value of 0.05, hence there is not enough evidence to reject null hypotheis. Hence, the **Conclusion** is : Mean of sample and poulation data are same for all the lots.
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

**Conclusion:** Mean of sample and poulation data are same for lot1.

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

**Conclusion:** Mean of sample and poulation data are same for lot2.

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

**Conclusion:** p-value is smaller than the significant value of 0.05 hence mean of sample and poulation data are not same for lot3. This is the only lot where we accept the alternative hypothesis.

```
	One Sample t-test

data:  lot3$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
```


## Study Design: MechaCar vs Competition.

### We'll use the ANOVA statistical test to study the sales metric of mechacars.

* NULL HYPOTHESIS: Means of all groups i.e Mecha cars and its competitors are the same.
* ALTERNATIVE HYPOTHESIS : Atleast one of the means is different from all the other groups.

For the purpose of our case study, we are going to get sales data from a dealership that has sales records for MechaCars as well as its competition. Our dataset would contain the following columns. 

- highway_mpg	(mileage given on highway)
- city_mpg	(mileage given in city)
- cost 		(selling price)
- safety_rating	(safety rating)
- sales		(sales recorded)
- company_name  (Mechacar or some competition company)

We are first going to filter all the mechacars records into a new dataset and run ANOVA test. 
Any p-value for each of the independent variables needs to be studied. p-value greater than 0.05 would mean that we would fail to reject our Null hypothesis and value less than 0.05 would mean that we would accept our alternative hypothesis.

We can run a similar ANOVA test on a different dataset containing data for all the competitor cars. We'll compare results for mechacars against its competitors. In case of any differences, we'll need to find out and add other relevant variables that may or may not have effect on the sales figure. Once, we figure out which variables can help us increase sales of mechacars, we can start working on them thus improving our customer base.  


