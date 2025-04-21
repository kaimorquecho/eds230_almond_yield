
#' Almond Yield Anomaly Model
#' models almond yield anomaly response to climate using time series data
#' @param feb_tmin is a vector of February's minimum temperature in C°
#' @param jan_precip is a vector of total precipitation in January in mm
#'
#' @returns a df of almond yield anomaly results in ton/acre
#' @author Kaiju Morquecho
#' @source almond transfer function adopted from Lobell et al. 2006

almond_anomaly <- function(feb_tmin, jan_precip) {
 
  almond_yield_anomaly = -0.015 * feb_tmin - 0.0046 * feb_tmin^2 - 0.07 * jan_precip + 0.0043 * jan_precip^2 + 0.28
 
 return(data.frame(yield_anomaly = almond_yield_anomaly))

 
}

