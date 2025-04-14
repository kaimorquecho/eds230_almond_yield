
almond_yield_model <- function(Tn2, P1) {
 
  yield_anomaly = -0.015 * Tn2 - 0.0046 * Tn2^2 - 0.07 * P1 + 0.0043 * P1^2 + 0.28
  
 output <- list(
   max_almond_yield_anomaly = max(yield_anomaly),
   min_almond_yield_anomaly = min(yield_anomaly),
   mean_almond_yield_anomaly = mean(yield_anomaly))
   
   
  return(output)
}
