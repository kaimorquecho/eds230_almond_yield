#' Almond Profit Model Using Climate-Driven Yield Anomalies
#' 
#' Accepts time series data frame with two required cols - "feb_tmin" and "jan_precip"
#'
#'
#' @param clim data frame with required columns: 'feb_tmin' and 'jan_precip'
#' @param base_yield baseline almond yield in tons/acre. Default is 1.1
#' @param price price per ton of almonds in USD. Default is $3520
#' @param cost operating costs per acre in USD. Default is $3720
#' @returns datframe with new columns 'yield_anomaly' in tons/acre 'profit' in USD/acre
#' 
#' @author Kaiju Morquecho
#'


almond_profit_model <- function(clim, base_yield = 1.1, price = 3520, cost = 3720 ) {
  
  data_cols <- c("feb_tmin", "jan_precip")
  
  if(!all(data_cols %in% names(clim))) {
    
    stop("Input dataframe must contain columns named feb_tmin and jan_precip")
    
  }
  
  clim <- clim %>% 
    mutate(
      yield_anomaly = almond_anomaly(feb_tmin, jan_precip)$yield_anomaly,
      profit = almond_profit(yield_anomaly, base_yield, price, cost)
    )
  
  
  return(clim)
}

