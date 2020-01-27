#' UNAM theme
#'
#' ggplot2 theme, UNAM style
#' @export
#' @import ggplot2

theme_unam <- function(){

  unam_colours <- c(unam_azul <<- "#002B7A",
                    unam_rojo <<- "#7A002B",
                    unam_verde <<- "#2B7A00",
                    unam_magenta <<- "#7A0068",
                    unam_verde2 <<- "#007A12",
                    unam_azul2 <<- "#12007A",
                    unam_morado <<- "#4F007A",
                    unam_rojo2 <<- "#7A1200",
                    unam_morado2 <<- "#31007A",
                    unam_magenta2 <<- "#6E007A",
                    unam_oro <<- "#D59F0F"
                    )

  unam <- ggthemr::ggthemr_palette(swatch = unam_colours,
                                  gradient = c(lower = "#DFE4EE", upper = "#002B7A"),
                                  background = "#000000")

  ggthemr::ggthemr(unam)

  theme_minimal() %+replace%
    theme(axis.line = element_line(colour = "#717171", arrow = grid::arrow(length = unit(1, "mm"))),
          axis.title.y = element_text(angle = 90, hjust = 1, size = 8, vjust = 3),
          axis.title.x = element_text(angle = 0, hjust = 1, size = 8, vjust = -1),
          axis.ticks = element_line(size = 0.25),
          legend.background = element_rect(colour = "grey"),
          legend.text.align = 0,
          legend.position = "right",
          legend.justification = c(1, 1),
          panel.grid.major = element_line(colour = "#CECBC3"),
          panel.grid.minor = element_line(colour = "#CECBC3", linetype = 2),
          plot.title = element_text(vjust = 2.5, hjust = 0, face = "bold", size = 14)
          )
}
