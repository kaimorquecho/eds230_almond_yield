
#' Almond Yield Anomaly Model
#' models almond yield anomaly response to climate using time series data
#' @param feb_tmin is a vector of February's minimum temperature in C°
#' @param jan_precip is a vector of total precipitation in January in mm
#'
#' @returns a list of the minimum, maximum, and mean almond yield anomaly results in ton/acre
#' @author Kaiju Morquecho
#' @source almond transfer function adopted from Lobell et al. 2006

almond_model <- function(feb_tmin, jan_precip) {
 
  almond_yield_anomaly = -0.015 * feb_tmin - 0.0046 * feb_tmin^2 - 0.07 * jan_precip + 0.0043 * jan_precip^2 + 0.28
  
 anomaly_summary <- list(
   max_almond_yield_anomaly = max(almond_yield_anomaly),
   min_almond_yield_anomaly = min(almond_yield_anomaly),
   mean_almond_yield_anomaly = mean(almond_yield_anomaly))
   
   
  return(anomaly_summary)
}
