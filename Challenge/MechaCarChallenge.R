# Deliverable 1

#1 Use the library() function to load the dplyr package.
library(dplyr)

#2 Import and read in the MechaCar_mpg.csv file as a dataframe.

library(tidyverse)
MechaCar_mpg <- read.csv(file='C:/Users/honey/Downloads/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#3 Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#4 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

#Additional Step: eliminate the independent variables that have little impact on predicting mpg to see impact:
lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg)) 

