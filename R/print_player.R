#' Print method for player objects
#'
#' @param x A player object
#' @param ... Additional arguments (ignored)
#'
#' @export
print.player <- function(x, ...) {
  cat("NFL Combine Player\n")
  cat("-------------------\n")
  cat("Name:     ", x$name, "\n")
  cat("Position: ", x$position, "\n")
  cat("College:  ", x$college, "\n")
}
