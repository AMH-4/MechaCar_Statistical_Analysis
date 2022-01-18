#DELIVERABLE 1

#Import Library()
library(dplyr)

#Read in csv file as dataframe
MCdf <- read.csv("MechaCar_mpg.csv")

#Inspect the result
head(MCdf)

#Perform linear regression using lm() function. 
#Pass 6 variables: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, mpg
#Add the "MCdf" dataframe as the data parameter
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MCdf)

#Using summary() determine the p-value and r-squared value
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MCdf))


#DELIVERABLE 2

#Read in csv file as table
SCtable <- read.table("Suspension_Coil.csv")

#Inspect the result
head(SCtable)

#Create a total_summary dataframe using summarize() to get mean, median, variance, and standard deviation of SC's PSI column
total_summary <- SuspensionTable %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create a lot_summary dataframe using group_by() and summarize() functions to group each manufacturing lot by the mean, media, variance, and standard deviation of SC's PSI column
lot_summary <- SuspensionTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))











