#' UNAM custom theme
#'
#' @export
#' @import ggplot2

theme_unam <- function(){

  ggplot2::theme_minimal()+
    ggplot2::theme(axis.line = ggplot2::element_line(colour = "#717171", arrow = grid::arrow(length = unit(1, "mm"))),
          axis.title.y = ggplot2::element_text(angle = 90, hjust = 1, size = 8, vjust = 3),
          axis.title.x = ggplot2::element_text(angle = 0, hjust = 1, size = 8, vjust = -1),
          axis.ticks = ggplot2::element_line(size = 0.25),
          legend.background = ggplot2::element_rect(colour = "grey"),
          legend.text.align = 0,
          legend.position = "right",
          legend.justification = c(1, 1),
          panel.grid.major = ggplot2::element_line(colour = "#CECBC3"),
          panel.grid.minor = ggplot2::element_line(colour = "#CECBC3", linetype = 2),
          plot.title = ggplot2::element_text(vjust = 2.5, hjust = 0, face = "bold", size = 14)
    )

}
