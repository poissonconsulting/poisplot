#' Proportional Change to N-fold Change
#'
#' @param x A double vector of the proportional (n-fold) change.
#'
#' @return A double vector of the n-fold (proportional) change.
#' @export
#'
#' @examples
#' prop2nfold(c(-1, -0.5, 0, 1, 2))
#' nfold2prop(prop2nfold(c(-1, -0.5, 0, 1, 2)))
prop2nfold <- function(x) {
  check_vector(x, c(-1, Inf, NA_real_))
  if(!length(x)) return(x)
  ifelse(x >= 0, x, -(x+1)^-1+1)
}

#' @describeIn prop2nfold N-fold Change to Proportional Change
#' @export
nfold2prop <- function(x) {
  check_vector(x, c(0, NA_real_))
  if(!length(x)) return(x)
  ifelse(x >= 0, x, -(x-1)^-1-1)
}

#' Nfold Change Transformation
#'
#' @export
nfold_trans <- function() {
    trans <- function(x) prop2nfold(x)
    inv <- function(x) nfold2prop(x)
    trans_new("nfold", trans, inv, domain = c(-1, Inf))
}

#' N-fold Position Scales
#'
#' scale_x_nfold() and scale_y_nfold() are variants of \code{\link{scale_x_continuous}()}
#' that set the trans argument to transform proportional change to n-fold change.
#' @inheritParams ggplot2::scale_x_continuous
#'
#' @export
scale_x_nfold <- function(...) {
  scale_x_continuous(..., trans = nfold_trans())
}

#' @rdname scale_x_nfold
#' @export
scale_y_nfold <- function(...) {
  scale_y_continuous(..., trans = nfold_trans())
}
