#' Get a player from the combine dataset
#'
#' This function searches the NFL Combine dataset for players whose names
#' partially match the input string.
#'
#' @param name A character string to search for (partial matches allowed)
#'
#' @return A data frame of matching players
#' @export
player_summary <- function(name) {
  data <- nflcombineR::combine
  if (missing(name) || !is.character(name)) {
    stop("`name` must be a character string.")
  }
  result <-dplyr::filter(data,
  grepl(name, nameFull, ignore.case = TRUE))
  if (nrow(result) == 0) {
    stop(paste0("No players found matching: '", name, "'"))
  }

  return(result)
}
