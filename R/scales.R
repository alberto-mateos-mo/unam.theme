#' Colour scales for unam colors
#'
#' @param palette Character name of palette in unam_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @rdname scale_colour_unam
#' @export
#'

scale_colour_unam <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {

  pal <- unam_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("unam_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }

}

#' @rdname scale_colour_unam
#' @export
#'

scale_fill_unam <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {

  pal <- unam_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("unam_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }

}

#' @rdname scale_colour_unam
#' @export
#'

scale_color_unam <- scale_colour_unam
