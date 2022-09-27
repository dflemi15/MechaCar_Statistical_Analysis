# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The output of the linear regression model are as follows:

![image](https://user-images.githubusercontent.com/107585908/192499388-774f9f49-ba7a-4283-8df3-f10ffad9dc48.png)

![image](https://user-images.githubusercontent.com/107585908/192499406-71754e22-9af2-4fc9-b981-07222a7df062.png)

The output indicates that the independent variables of “vehicle length” and “ground clearance” provide a non-random amount of variance when measured against the dependent variable of “mpg.” Since the p-value of our model is lower than .05 (5.35e-08), we can conclude that we can reject the Null hypothesis and state that there is some statistical relevance that can gleamed from the independent variables. To be precise, the relationship with the dependent variable is assessed to be strong. Finally, the R2 value of .7149 indicates that approximately 71% of the variance between the variables can be explained by the model.

## Summary Statistics on Suspension Coils

Since the suspension coils dictate that the variance of the suspension coils must not exceed 100 psi, an analysis of the variance for this category was conducted across all manufacturing lots. Collectively, the dataset yielded results that were well within the stated psi limit:

![image](https://user-images.githubusercontent.com/107585908/192499611-97592d8c-5783-455b-b068-5a6b09476f56.png)

Upon looking at each lot category individually, however, only lots 1 and 2 had variances within the 100-psi limit. Lot 3 exceeds this limit by 70 psi and should be addressed to bring it closer to the regulations. 

![image](https://user-images.githubusercontent.com/107585908/192499658-75704c1a-96ee-4b1f-b107-d89f0285e37a.png)

## T-Tests on Suspension Coils
The first step in analyzing the t-test for each lot was to conduct a t-test on the entire population first. The results are as follows:

![image](https://user-images.githubusercontent.com/107585908/192499698-26ff0e72-2104-48a9-aa75-ce8f4a50a4dc.png)

Since the test yielded a p-value of .06028 which is higher that the standard .05 value that confirms statistical relevance, I cannot reject the null hypothesis which indicates that there is no statistical difference between the means of the dataset.
After looking at the manufacturing lots individually, lots 1 and 2 yield p-values that are greater than .05 which would mirror the conclusion that was made previously about the entire dataset.

![image](https://user-images.githubusercontent.com/107585908/192499747-68928665-aa74-4ee6-bda3-1fd876ec2160.png)

Looking at lot 3, however, indicates a p-value of .04 which would imply that there is some meaningful variance with the mean in this population. There appears to be a flaw in the production of Lot 3 which will need to be analyzed in order to optimize.

![image](https://user-images.githubusercontent.com/107585908/192499795-c0ff6712-7480-4844-b50b-e1881e4a450a.png)

## Study Design: MechaCar vs Competition

An additional statistical study I would recommend would be to measure the performance of MechaCar vs the leading competitors in the industry. Performance would be based on a variety of factors that include cost, fuel efficiency, and safety ratings. The null hypothesis would be that there is no statistical performance difference between MechaCars and the leading competitors. The alternative hypothesis that I would want to prove is that there is a statistical difference between the populations of cars. This will be done by first comparing the summary statistics of all measured vehicle types and determine which one has the highest average in each of the measured categories. Then, I would use an ANOVA test to see if there are any statistical differences between the means of each population. The data that will be needed to conduct this test is the cost of, average fuel efficiency, and safety ratings of various competitors. This will allow me to analyze the general performance rating of the competition against MechaCar. 
