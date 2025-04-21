#' Title
#'
#' @param yield_anomaly numeric vector of yield anormalities in tons/acre
#' @param base_yield in tons/acre, default 1 ton/acre
#' @param price per ton of almonds in USD, default 4000
#'
#' @returns vector of profits in USD/acre
#' 
#'
#'
almond_profit <- function(yield_anomaly, base_yield = 1.0, price = 6000) {
  
  profit <- (base_yield + yield_anomaly) * price
  
  return(profit)
  
}
