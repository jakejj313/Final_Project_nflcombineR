#' Plot 40-yard dash times by position
#'
#' Creates a scatter plot showing how 40-yard dash times vary by NFL position
#' using the combine dataset included in the package.
#'
#' @return A ggplot2 scatter plot.
#' @export
#'
#' @examples
#' \dontrun{
#'   plot_forty()
#' }
plot_forty <- function() {
  ggplot2::ggplot(combine, ggplot2::aes(x = position , y = combine40yd)) +
    ggplot2::geom_point(alpha = 0.6) +
    ggplot2::labs(
      title = "NFL Combine: 40-Yard Dash by Position",
      x = "Position",
      y = "40-Yard Dash (seconds)"
    )
}