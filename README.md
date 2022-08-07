# MechaCar_Statistical_Analysis
In this project we are using R, a programming language to help AutosRUs’ newest prototype, the MechaCar, that is suffering from production troubles and perform linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes. 

## Linear Regression to Predict MPG

The MechaCar_mpg.csv data set contains fuel consumption per gallon test results for 50 MechaCar prototypes. In this deliverable we are developing a linear model that predicts the per gallon consumption of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

![deliverable 1](https://user-images.githubusercontent.com/66500222/183272607-cb2d27cf-857b-4e94-b964-d52e96bcf738.png)

- Vehicle length and vehicle ground clearance have a significant impact on the mpg of a prototype MechaCar. Conversely, vehicle weight, spoiler angle, and all-wheel drive (AWD) have p-values that indicate a random amount of deviation from the data set.

- The p-value for this model, p-value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates that there is sufficient evidence to reject our null hypothesis, which also indicates that the slope of this linear model is non-zero.

- This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be driven by this model. Relatively speaking, his multiple regression model does indeed effectively predict MechaCar prototype fuel consumption per gallon.

## Summary Statistics on Suspension Coils

In this part we are analyzing the MechaCar Suspension_Coil.csv data set that contains the results of several production lots. In this data set, the load capacity of several suspension coils was tested to determine if the manufacturing process is the same for all production lots. 

![total_summary](https://user-images.githubusercontent.com/66500222/183272771-c6996c80-331c-4fee-8742-97387da0c1b7.png)


![lot_summary](https://user-images.githubusercontent.com/66500222/183272779-d391bb45-f460-4cb1-b01a-3209e87e8047.png)

Looking at the total production lot, the coils have a deflection of 62.29 psi, which is well within the 100 psi deflection requirement. Similarly, but much more consistently, Lot 1 and Lot 2 are within the 100 psi deflection requirement; with variances of 0.98 and 7.47, respectively. However, it is lot 3 that shows much greater variance in performance and consistency with a variance of 170.29. It is Lot 3 that disproportionately causes a deviation at the full lot level.

## T-Tests on Suspension Coils

![deliverable 3](https://user-images.githubusercontent.com/66500222/183272905-4842f6b9-280c-499d-ba5d-9a91dff03750.png)

![deliverable 3 1](https://user-images.githubusercontent.com/66500222/183272954-32bf4fad-91cf-4d63-b1df-2c16a42e6d78.png)

![deliverable 3 2](https://user-images.githubusercontent.com/66500222/183272955-01d949f6-a534-4713-8a6b-257b706042c9.png)

From here, we can see that the true sample mean is 1498.78, which we also saw in the summary statistics above. At a p-value of 0.06, which is higher than the usual significance level of 0.05, there is NO sufficient evidence to support rejection of the null hypothesis. In other words, the mean of all three production lots is statistically similar to the estimated population mean of 1500.

Let's take a look at each individual lot:

- Lot 1 actually has a true sample mean of 1500, again as we saw in the summary statistics above. Obviously, with a p-value of 1, we cannot reject (i.e., accept) the null hypothesis that there is no statistical difference between the observed sample mean and the assumed population mean (1500).
- Lot 2 has almost the same result with a sample mean of 1500.02, p-value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.
- However, Lot 3, unsurprisingly, presents a different scenario. Here, the sample mean is 1496.14 and the p-value is 0.04, which is below the usual significance level of 0.05. Everything points to the rejection of the null hypothesis that this sample mean and the implied population mean are not statistically different.

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
