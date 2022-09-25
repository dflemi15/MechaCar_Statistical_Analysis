library(ggplot2)
library(magrittr)
library(dplyr)
library(tidyr)
library(tidyverse)

# Deliverable 1
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD,data=mechacar_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD,data=mechacar_df)) #summarize linear model

# Deliverable 2
suspension_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(suspension_df)

Mean = mean(suspension_df$PSI)
Median=median(suspension_df$PSI)
Variance=var(suspension_df$PSI)
SD = sd(suspension_df$PSI)

total_summary <- data.frame(Mean, Median, Variance, SD)

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                                                           Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
# Deliverable 3
t.test(suspension_df$PSI,mu=1500)

t.test(subset(suspension_df,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_df,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_df,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)

