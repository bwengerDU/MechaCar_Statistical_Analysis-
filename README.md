# MechaCar_Statistical_Analysis-

## Project Overview

In this project I am assisting with a special project aimed at identifying productions pitfalls afflicting an automotive production team. R is used to perform all of these statistical analyses. I utilized multiple liner regression analyses to identify variables needed to predict mpg of each the prototypes. I created summary statistics revolving around the PSI of suspension coils from manufacturing lots. I ran t-tests to determine if these manufacturing lots are statistically different. Finally, I had to run a comprehensive study to compare the company's product against those of their competitors. 

## Results

## Linear Regression to Predict MPG

![alt text](https://github.com/bwengerDU/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable1.png)

1. Vehicle length and ground clearance are statistically unlikely to provide random amounts of variance as they have Pr(vltl) values of 2.60e-12 and 5.21e-8 respectively.
2. The slope of the linear model is not zero. The p-value is 5.35e-11, considerably lower than the .05% significance level. 
3. The linear model does effectively predict MPG of the MechaCar prototypes. The r-squared value of 0.7149 is a strong level of correlation. No standard was provided so there is not a benchmark to meet, but the value the model has produced is generally considered effective.  

## Summary Statistics on Suspension Coils

![alt text](https://github.com/bwengerDU/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable2.png)
![alt text](https://github.com/bwengerDU/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable2.2.png)

1. Given the parameters that the variance in suspension coils must not exceed 100 PSI we can see that the total production variance figures shown in the first image is 62.29 PSI which is well within the the acceptable range of acceptable variance. It is whne we delve into the individual lots in the second image that it becomes clear that Lots 1 and 2 are performing extremely well by having variance of only .98 and 7.47 PSI respectively. However, Lot 3 has variance of 170.29 and is the main contributor to suspension coil variance. MechaCar will need to investigate the manufacturing processes that occurred with Lot 3 and ideally have those processes meet those that were applied to Lot 1. 

## T-Tests on Suspension Coils
![alt text](https://github.com/bwengerDU/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable3.1.png)

This t-test includes all three lots collectively. The joint sample has a mean of 1498.78, compared to the presumed 1500. The p-value is is 0.06 which means we are not able to reject the null hypothesis. Below this sample group is broken down into three lots to determine whether this is true from a more granular level. 

![alt text](https://github.com/bwengerDU/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable3.2.png)

Lot 1 has a mean of 1500 and a p-value of 1 so we are not able to reject the null hypothesis within Lot 1 manufactured suspension coils. 

![alt text](https://github.com/bwengerDU/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable3.3.png)

Lot 2 has a mean of 1500.2 and a p-value of .6072. Again, Lot 2 is unable to reject the null hypothesis for Lot 2. 

![alt text](https://github.com/bwengerDU/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable3.4.png)

Lot 3 has a mean of 1496.14 and a p-value of .04168. The p-value is below the .05 signficance level that allows us to reject the null hypothesis. 

## Study Design: MechaCar vs Competition

A second level of analysis is always going to be critical for a company that wants to gain truly useful insights. So far in this project we have made an internal examination to better understand the MechaCar processes and where any weaknesses exist and can be addressed. The next level is to examine how MechaCar measures up to their competition. The most critical element that will need to be measured against the competition will be the MSRP of cars in the same class. Understanding where MechaCar fits into the price spectrum will allow for us to provide context for examining all other metrics. When we examine the other metrics we can always come back to assessing the question as to whether the differences in MechaCar products can justifiably correlate to changes in cost. Fuel efficiency (combined mpg), performance (HP), consumer reports ratings, drivertrain (AWD, FWD, RWD) and safety ratings are the remaining factors that will be helpful to assess how MechaCar stacks up against their competitors. The benefit of these metrics is that data is all readily available for all competitors. Luckily the auto industry is heavily monitored and this data is fully transparent to consumers. 

Null hypothesis: The MechaCar is accurately priced given its performance in all key metrics. 
Alternative hypothesis: The MechaCar is not accurately priced based upon its performance in all key metrics. 

The most appropriate statistical testing will be a multiple linear regression. This will allow us to look at the metrics in a granular manner so we can see how each metric correlates to changes in prices. Understanding which elements impact pricing will also help the company determine a marketing strategy as the results of the regression will showcase which elements the market values most. 
