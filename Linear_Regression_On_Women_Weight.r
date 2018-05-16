
##This data set gives the average heights and weights for American women aged 30-39.

#Format
#A data frame with 15 observations on 2 variables.
#[,1] | height | numeric | Height (in)
#[,2] | weight | numeric | Weight (lbs)

#Your task is to build a linear regression model to predict weight (response variable) based on height (predictor variable). 
# & Use the slope and intercept from this model to predict the weigh corresponding to a height of 65, 
# and report the percentage error in this prediction.


data = women

library(dplyr)

model = lm(weight~height, data = data)

predict_weight = predict(model, data.frame(height=65))

predict_weight <- as.data.frame(predict_weight)

y = data$weight[data['height']==65]

x = (((predict_weight - y)/y)*100) 

names(x) <- c('x')

print(x)
