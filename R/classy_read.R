#' Import and tidy a dataframe for classification
#'
#' Reads in a CSV file as a data frame,
#' converts one specified column to the type factor,
#' selects specified columns to keep,
#' checks data for NaNs,
#' then returns the data frame object for the purpose of Classification.
#'
#' @param path A string - the URL pointing to the data to be imported.
#' @param col  A string - the column in the data frame to convert to the type `factor`.
#' @inheritParams dplyr::select

#'
#' @return A data frame. The output has the following properties:
#'
#' * Rows are the data imported from using URL, NaNs are counted but not modified.
#' * `col` is converted to type `factor`
#' * Columns are modified if arguments were passed to `...`
#'
#' @export
#'
#' @examples
#' URL <- "https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv"
#' classy_read(URL, "species")
#' classy_read(URL, col = NULL, species)
#' classy_read(URL, "species", species, sepal_length:sepal_width)

classy_read <- function(path, col = NULL, ...){
  if (!is.character(path)) {
    stop("`path` must be of type `character`")
  }

  data <- utils::read.csv(url(path))

  if (!is.null(col)) {
    if (!is.character(col))
      stop("`col` must be of type `character`")
    data[[col]] <- as.factor(data[[col]])
  }

  if(!missing(...)){
    data <- dplyr::select(data, ...)
  }

  print(dplyr::summarize_all(data, ~ sum(is.na(.))))
  return(data)
}
