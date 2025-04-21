almond_profit_model <- function(clim, base_yield = 1.0, price = 4000) {
  
  data_cols <- c("feb_tmin", "jan_precip")
  
  if(!all(data_cols %in% names(clim))) {
    
    stop("Input dataframe must contain columns named feb_tmin and jan_precip")
    
  }
  
  clim <- clim %>% 
    mutate(
      yield_anomaly = almond_anomaly(feb_tmin, jan_precip)$yield_anomaly,
      profit = almond_profit(yield_anomaly, base_yield, price)
    )
  
  
  return(clim)
}

