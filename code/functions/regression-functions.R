#Computes RSS using the regression and outputs RSS

residual_sum_squares <- function(dataset){
return (sum((dataset$residuals)^2))
}

#Computes TSS, input is regression, output is TSS

total_sum_squares<- function(dataset) {
	ybar <- mean(dataset$fitted.values + dataset$residuals)
return (sum(((dataset$fitted.values + dataset$residuals) - ybar)^2))
}

#Computes R Squared, input is regression, output is R^2

r_squared <- function(dataset) {
return (total_sum_squares(dataset) - residual_sum_squares(dataset)) / total_sum_squares(dataset)
}

#Computes f-stat, input is regression, output is f-stat
f_statistic <- function(dataset) {
summary(dataset)$fstatistic[1]
}

# Computes RSE, input is regression, output is residual standard error

residual_standard_error <- function(dataset) {
return (summary(dataset)$sigma)
}
