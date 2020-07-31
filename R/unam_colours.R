#' UNAM's graphics image colours
#'
#' @param ... Colour position
#' @noRd

unam_cols <- function(...){

  unam_colours <- c(
    "#003D79",
    "#0C7082",
    "#D59F0F",
    "#F25449",
    "#439078",
    "#003D79",
    "#DFE1AE",
    "#11BFC4",
    "#EDBE7E",
    "#B6985E",
    "#003D79",
    "#B6985E"
    )

  cols <- c(...)

  if(is.null(cols)) return(unam_colours)

  unam_colours[cols]

}

#' Interpolates unam color palette
#'
#' @param palette Character name of the palette to use (main, secondary or basic)
#' @param reverse Should palette be reversed?
#' @param ... Additional arguments to be passed to coloRampPalette
#' @noRd

unam_pal <- function(palette = "main", reverse = FALSE, ...){

  unam_palettes <- list(
    "main" = unam_cols(1:5),
    "secondary" = unam_cols(6:10),
    "basic" = unam_cols(11:12)
  )

  pal <- unam_palettes[[palette]]

  if(reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)

}
