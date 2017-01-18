#' Theme Poisson
#'
#' A gg theme for Poisson style plots.
#'
#' To use, ensure ggplot2 is installed and then call
#' \code{theme_set(theme_Poisson())}.
#'
#' @param base_size an integer scalar indicating the base font size.
#' @param base_family a character scalar indicating the base font family.
#' @return A gg theme object.
#' @export
theme_Poisson <- function(base_size = 10, base_family = "") {
  theme_grey(base_size = base_size, base_family = base_family) %+replace%
    theme(
      axis.ticks        = element_line(colour = "black"),
      legend.key        = element_rect(colour = "grey80"),
      legend.title      = element_text(size = rel(0.8)),
      panel.background  = element_rect(fill = "white", colour = NA),
      panel.border      = element_rect(fill = NA, colour = "black"),
      panel.grid.major  = element_line(colour = "grey80", size = 0.5),
      panel.grid.minor  = element_line(colour = "grey90", size = 0.2),
      strip.background  = element_rect(fill = "grey80", colour = "black")
    )
}
