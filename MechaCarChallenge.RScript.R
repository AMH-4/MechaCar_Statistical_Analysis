#Import Library()
library(dplyr)

# Read in csv file
MCdf <- read.csv("MechaCar_mpg.csv")

#Inspect the result
head(MCdf)

#Perform linear regression using lm() function. 
#Pass 6 variables: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg
#Add the "MCdf" dataframe as the data parameter
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MCdf)

#Using summary() determine the p-value and r-squared value
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MCdf))

