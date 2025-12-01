#' Create a player object
#'
#' @param name Player name
#' @param position Player position
#' @param college Player college
#'
#' @return An object of class "player"
#' @export
player <- function(name, position, college) {
  obj <- list(
    name = name,
    position = position,
    college = college
  )
  class(obj) <- "player"
  return(obj)
}
