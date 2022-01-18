#DELIVERABLE 1--------------

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


#DELIVERABLE 2--------------

#Read in csv file as table
SCtable <- read.table("Suspension_Coil.csv")

#Inspect the result
head(SCtable)

#Create a total_summary dataframe using summarize() to get mean, median, variance, and standard deviation of SC's PSI column
total_summary <- SuspensionTable %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create a lot_summary dataframe using group_by() and summarize() functions to group each manufacturing lot by the mean, media, variance, and standard deviation of SC's PSI column
lot_summary3 <- SuspensionTable  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), Num_Coil=n(),.groups='keep')

                                                                               
                                                                               
#DELIVERABLE 3--------------

#write an RScript using the t.test() function to determine if the PSI across all manufacturing lots 
#is statistically different from the population mean of 1,500 pounds per square inch.

#ALL LOTS
t.test(SuspensionTable$PSI,mu=1500)

#Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
#and its subset() argument to determine if the PSI for each manufacturing lot 
#is statistically different from the population mean of 1,500 pounds per square inch.

#LOT 1
t.test(subset(SuspensionTable,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

#LOT 2
t.test(subset(SuspensionTable,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

#LOT 3
t.test(subset(SuspensionTable,Manufacturing_Lot=="Lot3")$PSI,mu=1500)








