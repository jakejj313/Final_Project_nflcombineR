#' Plot bench press reps by position
#'
#' Creates a scatter plot showing bench press performance across NFL positions
#' using the combine dataset included in the package.
#'
#' @return A ggplot2 scatter plot.
#' @export
#'
#' @examples
#' \dontrun{
#'   plot_bench()
#' }
plot_bench <- function() {
  ggplot2::ggplot(combine, ggplot2::aes(x = position, y = combineBench)) +
    ggplot2::geom_point(alpha = 0.6) +
    ggplot2::labs(
      title = "NFL Combine: Bench Press by Position",
      x = "Position",
      y = "Bench Press Reps"
    )}