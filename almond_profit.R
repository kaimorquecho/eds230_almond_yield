#' Almond Profit Function 
#' 
#' @param yield_anomaly numeric vector of yield anomalies in tons/acre
#' @param base_yield in tons/acre, default 1.1 ton/acre, equivalent to 2200 lbs/acre 
#' @param price per ton of almonds in USD, default $3520
#' @param cost operating cost per acre in USD, default is $3720 
#' 
#' The default values for base_yield, price, and cost are adopted from the 2024 UC Davis Almond Cost and Return Study
#' 
#' Study can be found here: https://coststudyfiles.ucdavis.edu/2024/07/09/2024SacValleyAlmonds7.5.24.%20Final%20draft.pdf
#' 
#' @return numeric vector of profits in USD/acre
#' @author Kaiju Morquecho

almond_profit <- function(yield_anomaly, base_yield = 1.1, price = 3520, cost = 3720) {
  
  profit <- ((base_yield + yield_anomaly) * price) - cost
  
  return(profit)
  
}

