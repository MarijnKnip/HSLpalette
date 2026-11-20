#' Vervanger voor scale_fill_gradientn / scale_colour_gradientn
#'
#' Zoals \code{\link[ggplot2:scale_gradient]{ggplot2::scale_fill_gradientn}},
#' maar met kleuren uit een HSL-palet.
#'
#' @param palette Naam van het palet (zie \code{\link{HSLpalette}}).
#' @param direction 1 = originele volgorde, -1 = omgekeerd.
#' @param n Aantal tussenkleuren dat uit het palet wordt geïnterpoleerd (standaard 256).
#' @param ... Doorgegeven aan \code{\link[ggplot2:scale_gradient]{ggplot2::scale_fill_gradientn}}.
#' @return Een ggplot2 fill-scale.
#' @export
#' @examples
#' ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
#'   geom_raster() +
#'   scale_fill_HSL_gradientn("hslheat1")


# vervangers voor scale_fill_gradientn / scale_color_gradientn
# n = aantal tussenkleuren dat uit het palet geïnterpoleerd wordt
scale_fill_HSL_gradientn <- function(palette = "main", direction = 1,
                                     n = 256, ...) {
  pal <- palette_gen_c(palette = palette, direction = direction)
  ggplot2::scale_fill_gradientn(colors = pal(n), ...)
}


#' @rdname scale_fill_HSL_gradientn
#' @export
scale_colour_HSL_gradientn <- function(palette = "main", direction = 1,
                                       n = 256, ...) { ... }

scale_colour_HSL_gradientn <- function(palette = "main", direction = 1,
                                       n = 256, ...) {
  pal <- palette_gen_c(palette = palette, direction = direction)
  ggplot2::scale_colour_gradientn(colours = pal(n), ...)
}

scale_color_HSL_gradientn <- scale_colour_HSL_gradientn
