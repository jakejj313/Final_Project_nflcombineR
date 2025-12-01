#' Summary of combine drills by position
#'
#' @param position A position abbreviation (e.g., "WR", "QB", "LB")
#'
#' @return A data frame of position averages
#' @export
position_summary <- function(position) {
  
  data <- nflcombineR::combine
  
  pos_data <- dplyr::filter(data, combinePosition == position)
  
  if (nrow(pos_data) == 0) stop("No players found for that position.")
  
  summary <- pos_data |>
    dplyr::summarise(
      avg_40 = mean(as.numeric(combine40yd), na.rm = TRUE),
      avg_bench = mean(as.numeric(combineBench), na.rm = TRUE),
      avg_vert = mean(as.numeric(combineVert), na.rm = TRUE),
      avg_shuttle = mean(as.numeric(combineShuttle), na.rm = TRUE),
      avg_broad = mean(as.numeric(combineBroad), na.rm = TRUE),
      avg_3cone = mean(as.numeric(combine3cone), na.rm = TRUE)
    )
  
  return(summary)
}