#' Discrete fill-scale met interpolatie
#'
#' Zoals \code{\link{scale_fill_HSL}}, maar interpoleert extra kleuren als er
#' meer niveaus zijn dan kleuren in het palet.
#'
#' @inheritParams scale_fill_HSL
#' @return Een ggplot2 fill-scale.
#' @export
#' @examples
#' ggplot(mpg, aes(class, fill = model)) +
#'   geom_bar() +
#'   scale_fill_HSL_n("main")
#'   
# discrete fill-scale met interpolatie bij tekort aan kleuren
scale_fill_HSL_n <- function(palette = "main", direction = 1, ...) {
  ggplot2::discrete_scale(
    "fill", "HSL_n",
    palette_gen_n(palette, direction),
    ...
  )
}

#' @rdname scale_fill_HSL_n
#' @export
scale_color_HSL_n <- function(palette = "main", direction = 1, ...) { ... }
# discrete color-scale met interpolatie bij tekort aan kleuren
scale_color_HSL_n <- function(palette = "main", direction = 1, ...) {
  ggplot2::discrete_scale(
    "colour", "HSL_n",
    palette_gen_n(palette, direction),
    ...
  )
}
#United Britain of America
scale_colour_HSL_n <- scale_color_HSL_n 
