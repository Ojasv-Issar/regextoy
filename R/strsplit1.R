#' Split a string into pieces
#'
#' @param x A character string.
#' @param split A string to split on.
#' @return A character vector.
#' @export
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
