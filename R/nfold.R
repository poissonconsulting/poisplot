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
  x <- as.numeric(x)
  chk_vector(x)
  check_values(x, c(0, NA_real_))
  if(!length(x)) return(x)
  ifelse(x >= 0, x, -(x+1)^-1+1)
}

#' @describeIn prop2nfold N-fold Change to Proportional Change
#' @export
nfold2prop <- function(x) {
  x <- as.numeric(x)
  chk_vector(x, c(0, NA_real_))
  check_values(x, c(0, NA_real_))
  if(!length(x)) return(x)
  ifelse(x >= 0, x, -(x-1)^-1-1)
}

#' N-fold Breaks
#'
#' @param n A numeric scalar of the desired number of breaks.
#'
#' @return A function to calculate the breaks from a vector.
#' @export
#'
#' @examples
#' nfold_breaks()(c(-3/4,-2/3,-1/2,0,1,2,3))
nfold_breaks <- function(n = 5) {
  force(n)
  function(x) {
    x <- prop2nfold(x)
    nfold2prop(extended_breaks(n = n)(x))
  }
}

#' Nfold Change Transformation
#'
#' @export
nfold_trans <- function() {
  trans <- function(x) prop2nfold(x)
  inv <- function(x) nfold2prop(x)
  trans_new("nfold", trans, inv, breaks = nfold_breaks(), domain = c(-Inf, Inf))
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
