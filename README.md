# MechaCar_Statistical_Analysis
In this project we are using R, a programming language to help AutosRUs’ newest prototype, the MechaCar, that is suffering from production troubles and perform linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes. 

## Linear Regression to Predict MPG

The MechaCar_mpg.csv data set contains fuel consumption per gallon test results for 50 MechaCar prototypes. In this deliverable we are developing a linear model that predicts the per gallon consumption of MechaCar prototypes using several variables from the MechaCar_mpg.csv file.

![deliverable 1](https://user-images.githubusercontent.com/66500222/183272607-cb2d27cf-857b-4e94-b964-d52e96bcf738.png)

- Vehicle length and vehicle ground clearance have a significant impact on the mpg of a prototype MechaCar. Conversely, vehicle weight, spoiler angle, and all-wheel drive (AWD) have p-values that indicate a random amount of deviation from the data set.

- The p-value for this model, p-value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates that there is sufficient evidence to reject our null hypothesis, which also indicates that the slope of this linear model is non-zero.

- This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be driven by this model. Relatively speaking, his multiple regression model does indeed effectively predict MechaCar prototype fuel consumption per gallon.

## Summary Statistics on Suspension Coils
write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils
briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
