#' Discrete fill-scale in HSL-huisstijl
#'
#' @param palette Naam van het palet (zie \code{\link{HSLpalette}}).
#' @param direction 1 = originele volgorde, -1 = omgekeerd.
#' @param ... Doorgegeven aan \code{\link[ggplot2:scale_manual]{ggplot2::scale_fill_manual}}.
#' @return Een ggplot2 fill-scale.
#' @export
#' @examples
#' ggplot(mtcars, aes(factor(cyl), fill = factor(cyl))) +
#'   geom_bar() +
#'   scale_fill_HSL("main")
scale_fill_HSL <- function(palette = "main", direction = 1, ...) { ... }



scale_fill_HSL <- function(palette = "main", direction = 1, ...) {
  all_colors <- HSLpalette(palette)
  all_colors <- unname(unlist(all_colors))
  all_colors <- if (direction >= 0) all_colors else rev(all_colors)
  ggplot2::scale_fill_manual(values = all_colors, ...)
}

#' Discrete colour-scale in HSL-huisstijl
#'
#' @inheritParams scale_fill_HSL
#' @return Een ggplot2 colour-scale.
#' @export
#' @rdname scale_fill_HSL
scale_colour_HSL <- function(palette = "main", direction = 1, ...) { ... }

scale_colour_HSL <- function(palette = "main", direction = 1, ...) {
  
  ggplot2::discrete_scale(
    "colour", "HSL",
    palette_gen(palette, direction),
    ...
  )
}

scale_color_HSL <- scale_colour_HSL
