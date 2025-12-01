#' Compare two players across combine metrics
#'
#' @param player1 First player's name (character)
#' @param player2 Second player's name (character)
#'
#' @return A data frame comparing combine performance
#' @export
compare_players <- function(player1, player2) {
  
  data <- nflcombineR::combine
  
  p1 <- dplyr::filter(data, grepl(player1, nameFull, ignore.case = TRUE))
  p2 <- dplyr::filter(data, grepl(player2, nameFull, ignore.case = TRUE))
  
  if (nrow(p1) == 0) stop("Player 1 not found in dataset.")
  if (nrow(p2) == 0) stop("Player 2 not found in dataset.")
  
  numeric_stats <- c(
    "combine40yd", "combineBench", "combineVert", "combineShuttle",
    "combineBroad", "combine3cone", "combine60ydShuttle"
  )
  
  p1_vals <- as.numeric(p1[1, numeric_stats])
  p2_vals <- as.numeric(p2[1, numeric_stats])
  
  result <- data.frame(
    Metric = numeric_stats,
    Player1 = p1_vals,
    Player2 = p2_vals
  )
  
  return(result)
}