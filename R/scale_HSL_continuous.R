#' Continue colour-scale in HSL-huisstijl
#'
#' Interpoleert kleuren van een HSL-palet doorlopend over de waarden.
#'
#' @param palette Naam van het palet (zie \code{\link{HSLpalette}}).
#' @param direction 1 = originele volgorde, -1 = omgekeerd.
#' @param ... Doorgegeven aan \code{\link[ggplot2:scale_gradient]{ggplot2::scale_colour_gradientn}}.
#' @return Een ggplot2 colour-scale.
#' @export
#' @examples
#' ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
#'   geom_raster() +
#'   scale_fill_HSL_c("hslheat1")


#' @rdname scale_color_HSL_c
#' @export
scale_fill_HSL_c <- function(palette = "main", direction = 1, ...) { ... }

#continuous
scale_color_HSL_c <- function(palette = "main", direction = 1, ...) {
  
  pal <- palette_gen_c(palette = palette, direction = direction)
  
  scale_color_gradientn(colors = pal(256), ...)
  
}

scale_fill_HSL_c <- function(palette = "main", direction = 1, ...) {
  
  pal <- palette_gen_c(palette = palette, direction = direction)
  
  scale_fill_gradientn(colors = pal(256), ...)
  
}

#' Interne generator met interpolatie bij tekort aan kleuren
#'
#' @inheritParams palette_gen
#' @return Functie die voor n kleuren teruggeeft; interpoleert als n groter is
#'   dan het aantal kleuren in het palet.
#' @noRd
palette_gen_n <- function(palette = "main", direction = 1) { ... }

palette_gen_n <- function(palette = "main", direction = 1) {
  function(n) {
    pal <- HSLpalette(palette)
    pal <- unname(unlist(pal))
    pal <- if (direction >= 0) pal else rev(pal)
    if (n <= length(pal)) pal[1:n] else colorRampPalette(pal)(n)
  }
}
