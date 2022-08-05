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

# Additional Step: eliminate the independent variables that have little impact on predicting mpg to see impact.

lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_mpg)) 


# Deliverable 2

#1 Import and read in the Suspension_Coil.csv file as a table

MechaCar_coil <- read.csv(file='C:/Users/honey/Downloads/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)  

#2 Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- MechaCar_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

#3 Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.    

lot_summary <- MechaCar_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')  

# box plot: PSI Whole lot
plt1 <- ggplot(MechaCar_coil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

# box plot: PSI each individual Lot
plt2 <- ggplot(MechaCar_coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()

# Deliverable 3

#1 use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.

t.test(MechaCar_coil$PSI,mu=1500)

#2 Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI

lot1 <- subset(MechaCar_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(MechaCar_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(MechaCar_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

