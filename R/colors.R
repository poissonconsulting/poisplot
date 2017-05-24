#' @title Sets colors
#'
#' @description
#' Sets color palette for poiscon
#'
#' @param values character vector of colors
#' @return invisible character vector of colors
#' @export
set_colors <- function(values = get_colors()) {
  check_string(values)
  if (length(values) < 6)
    stop("there must be at least 6 color values")

  options(poiscon.colors = values)
  invisible(values)
}


#' @title Gets colors
#'
#' @description
#' Gets color palette for poiscon
#'
#' @return color palette as character vector
#' @export
get_colors <- function() {
  getOption("poiscon.colors", c("black", "red", "blue", "green4", "orange3",
                                "slategray", "purple"))
}
