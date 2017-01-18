#' Theme Golder
#'
#' A ggplot2 theme for Golder plots
#'
#' @param base_size an integer scalar indicating the base font size.
#' @param base_family a character scalar indicating the base font family.
#' @return A ggplot2 theme.
#' @export
theme_Golder <- function(base_size = 10, base_family = "Helvetica") {
  theme(line = element_line(colour = "black", size = 0.5, linetype = 1, lineend = "butt"),
    rect = element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1),
    text = element_text(family = base_family, face = "plain", colour = "black",
      size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = 0.9),
    axis.line = element_blank(), axis.text = element_text(size = rel(0.8), colour = "grey50"),
    axis.text.x = element_text(vjust = 1), axis.text.y = element_text(hjust = 1),
    axis.ticks = element_line(colour = "black"), axis.title.x = element_text(),
    axis.title.y = element_text(angle = 90), axis.ticks.length = unit(0.15, "cm"),
    axis.ticks.margin = unit(0.1, "cm"), legend.background = element_rect(colour = NA),
    legend.margin = unit(0.2, "cm"), legend.key = element_rect(colour = "grey80"),
    legend.key.size = unit(1.2, "lines"), legend.key.height = NULL, legend.key.width = NULL,
    legend.text = element_text(size = rel(0.8)), legend.text.align = NULL, legend.title = element_text(size = rel(0.8),
      face = "bold", hjust = 0), legend.title.align = NULL, legend.position = "right",
    legend.direction = NULL, legend.justification = "center", legend.box = NULL,
    panel.background = element_rect(fill = "white", colour = NA), panel.border = element_rect(fill = NA,
      colour = "black"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
    panel.margin = unit(0.25, "lines"), panel.margin.x = NULL, panel.margin.y = NULL,
    strip.background = element_rect(fill = "grey80",
      colour = "black"), strip.text = element_text(size = rel(0.8)), strip.text.x = element_text(),
    strip.text.y = element_text(angle = -90), plot.background = element_rect(colour = NA),
    plot.title = element_blank(), plot.margin = unit(c(1, 1, 0.5, 0.5), "lines"),
    complete = TRUE)
}

#' @title Palette Golder
#'
#' @description
#' A color palette for Golder plots
#'
#' @return A vector of colors.
#' @export
palette_Golder <- function() {
  return(c("black", "red", "blue", "yellow"))
}
