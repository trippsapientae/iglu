#' Plot time series of glucose measurements
#'
#' @param data DataFrame with column names ("id", "time", and "gl").
#'
#' @return
#'
#' @export
#'
#' @examples
#' plot_glu(data)
#'
plot_glu <- function(data){
  gl_by_id = as.double(data$gl)
  # ***
  date_by_id = as.POSIXct(data$time)
  ggplot2::ggplot(data = data, ggplot2::aes(x = date_by_id, y = gl_by_id, group = 1)) +
    ggplot2::geom_line() +
    ggplot2::scale_x_datetime(name = 'Date') +
    ggplot2::scale_y_continuous(name = 'Blood Glucosed')
      }