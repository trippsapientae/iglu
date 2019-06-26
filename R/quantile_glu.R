#' Calculate glucose level quantiles
#'
#' @param data DataFrame with column names ("id", "time", and "gl").
#' @param quantiles List of values between 0 and 1.
#'
#' @description Simple wrapper for quantile().
#'
#' @examples
#' quantile_glu(data)
#' quantile_glu(data, quantiles = c(0, .33, .66, 1))

quantile_glu <- function(data, quantiles = c(0,0.25,0.5,0.75,1)){
  gl_by_id = as.double(data$gl)
  out = quantile(gl_by_id, na.rm = T, probs = quantiles)
  return(out)
}