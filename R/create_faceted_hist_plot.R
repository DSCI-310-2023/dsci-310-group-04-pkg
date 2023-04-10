#' Create a faceted plot for a target variable
#'
#' Creates a faceted plot for the target variable "playlist_genre"
#' for classification using the Spotify Songs dataset
#' including any selected features,
#' combined using the face_grid() function
#'
#' @param df Tidy data containing a list of genres and acoustic features, as a `df`.
#' @param feature Specified acoustic feature of which we want a visualization, as a `character`.
#'
#' @return A faceted plot of 6 histograms, one of each genre.
#' @export
#' @examples
#' x <- RCurl::getURL("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-21/spotify_songs.csv")
#' test_data <- read.csv(text = x)
#' create_faceted_hist_plot(test_data, 'danceability')

#' @importFrom ggplot2 ggplot aes geom_bar facet_grid

create_faceted_hist_plot <- function(df,feature) {
  if (!is.character(feature)) {
    stop("`feature` should be a string")
  }
  if (!is.data.frame(df)) {
    stop("`df` should be a data frame")
  }
  if (nrow(df) == 0) {
    stop("`df` should be a data frame")
  }
  xvar <- rlang::sym(feature)

  ggplot(df, aes(x = !!xvar)) +
    geom_bar(stat = "bin", bins = 20)  +
    facet_grid(rows = "playlist_genre")
}
